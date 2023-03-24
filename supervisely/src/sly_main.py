import functools
import sys
import time
from pathlib import Path
from time import sleep

import supervisely as sly

repo_root_source_dir = str(Path(sys.argv[0]).parents[2])
sly.logger.info(f"Repo root source directory: {repo_root_source_dir}")
sys.path.append(repo_root_source_dir)

app_root_source_dir = str(Path(sys.argv[0]).parents[1])
sly.logger.info(f"App root source directory: {app_root_source_dir}")
sys.path.append(app_root_source_dir)

sources_dir = str(Path(sys.argv[0]).parents[0])
sly.logger.info(f"Source directory: {sources_dir}")
sys.path.append(sources_dir)

import cProfile
import io
import pstats

from interactive_demo.controller import InteractiveController

import load_model
import sly_functions as f
import sly_globals as g


def profileit(func):
    def wrapper(*args, **kwargs):
        datafn = func.__name__ + ".profile"  # Name the data file sensibly
        prof = cProfile.Profile()
        retval = prof.runcall(func, *args, **kwargs)
        s = io.StringIO()
        sortby = "cumulative"
        ps = pstats.Stats(prof, stream=s).sort_stats(sortby)
        ps.print_stats()
        with open(datafn, "w") as perf_file:
            perf_file.write(s.getvalue())
        return retval

    return wrapper


def send_error_data(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        value = None
        try:
            value = func(*args, **kwargs)
        except Exception as e:
            sly.logger.error(f"Error while processing data: {e}")
            request_id = kwargs["context"]["request_id"]
            try:
                g.my_app.send_response(request_id, data={"error": repr(e)})
            except Exception as ex:
                sly.logger.exception(f"Cannot send error response: {ex}")
        return value

    return wrapper


@g.my_app.callback("is_online")
@sly.timeit
@send_error_data
def is_online(api: sly.Api, task_id, context, state, app_logger):
    request_id = context["request_id"]
    g.my_app.send_response(request_id, data={"is_online": True})


@g.my_app.callback("smart_segmentation")
@profileit
@sly.timeit
@send_error_data
def smart_segmentation(api: sly.Api, task_id, context, state, app_logger):
    controller = InteractiveController(
        net=g.NET,
        device=g.DEVICE,
        predictor_params=g.PREDICTOR_PARAMS,
        prob_thresh=g.PROB_THRESH,
    )

    bitmap_origin, bitmap_data = f.process_bitmap_from_clicks(context, controller)
    request_id = context["request_id"]
    g.my_app.send_response(
        request_id,
        data={
            "origin": bitmap_origin,
            "bitmap": bitmap_data,
            "success": True,
            "error": None,
        },
    )


@g.my_app.callback("smart_segmentation_batched")
@sly.timeit
@send_error_data
def smart_segmentation_batched(api: sly.Api, task_id, context, state, app_logger):
    response_batch = {}
    data_to_process = context["data_to_process"]
    for idx, data in data_to_process.items():
        try:
            bitmap_origin, bitmap_data = f.process_bitmap_from_clicks(data)
            response_batch[idx] = {"bitmap": bitmap_data, "origin": bitmap_origin}
        except Exception as ex:
            g.my_app.logger.warn(f"Couldn't process image:\n{ex}")
            response_batch[idx] = None
    request_id = context["request_id"]
    g.my_app.send_response(request_id, data=response_batch)


def main():
    sly.logger.info(
        "Script arguments",
        extra={
            "context.teamId": g.TEAM_ID,
            "device": g.DEVICE,
            "model": g.MODEL_NAME,
            "brs_mode": g.BRS_MODE,
            "prob_thresh": g.PROB_THRESH,
            "net_clicks_limit": g.LOG_NET_CLICKS,
            "lbfgs_max_iters": g.LBFGS_MAX_ITERS,
        },
    )

    load_model.deploy()
    g.my_app.run()


if __name__ == "__main__":
    sly.main_wrapper("main", main)
