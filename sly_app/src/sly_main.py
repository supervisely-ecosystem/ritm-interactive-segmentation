import functools

# Source dirs
import sys
from pathlib import Path

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

import sly_app.src.load_model as load_model
import sly_app.src.sly_functions as f
import sly_app.src.sly_globals as g


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


# @g.my_app.callback("is_online")
@send_error_data
def is_online(api: sly.Api, task_id, context, state, app_logger):
    request_id = context["request_id"]
    g.my_app.send_response(request_id, data={"is_online": True})


# @g.my_app.callback("smart_segmentation")
@send_error_data
def smart_segmentation(api: sly.Api, task_id, context, state, app_logger):
    print("Clicks coords in context")
    print(f"Context: {context}")
    bitmap_origin, bitmap_data = f.process_bitmap_from_clicks(context)
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


# @g.my_app.callback("smart_segmentation_batched")
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


def run_model():
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


app = sly.Application()
run_model()
