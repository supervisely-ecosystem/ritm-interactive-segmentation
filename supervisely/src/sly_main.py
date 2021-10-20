import os
import functools
import supervisely_lib as sly

# Source dirs
import sys
from pathlib import Path

repo_root_source_dir = str(Path(sys.argv[0]).parents[2])
sly.logger.info(f"Repo root source directory: {repo_root_source_dir}")
sys.path.append(repo_root_source_dir)

app_root_source_dir = str(Path(sys.argv[0]).parents[1])
sly.logger.info(f"App root source directory: {app_root_source_dir}")
sys.path.append(app_root_source_dir)

sources_dir = str(Path(sys.argv[0]).parents[0])
sly.logger.info(f"Source directory: {sources_dir}")
sys.path.append(sources_dir)


import sly_globals as g
import load_model
import sly_functions as f
import mask_image


def send_error_data(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        value = None
        try:
            value = func(*args, **kwargs)
        except Exception as e:
            request_id = kwargs["context"]["request_id"]
            g.my_app.send_response(request_id, data={"error": repr(e)})
        return value

    return wrapper


@g.my_app.callback("smart_segmentation")
@sly.timeit
@send_error_data
def smart_segmentation(api: sly.Api, task_id, context, state, app_logger):
    x1, y1, x2, y2 = f.get_smart_bbox(context["crop"])
    pos_points, neg_points = f.get_pos_neg_points_list_from_context(context)
    pos_points, neg_points = f.get_pos_neg_points_list_from_context_bbox_relative(x1, y1, pos_points, neg_points)
    clicks_list = f.get_click_list_from_points(pos_points, neg_points)

    img_path = os.path.join(g.img_dir, "base_image.png")
    base_image_np = f.get_image_by_hash(context["image_hash"], img_path)
    bbox = sly.Rectangle(y1, x1, y2, x2)
    crop_np = sly.image.crop(base_image_np, bbox)
    res_mask = mask_image.get_mask_from_clicks(crop_np, clicks_list)
    bitmap = f.get_bitmap_from_mask(res_mask)
    bitmap_origin, bitmap_data = f.unpack_bitmap(bitmap, y1, x1)

    request_id = context["request_id"]
    g.my_app.send_response(request_id, data={"origin": bitmap_origin, "bitmap": bitmap_data, "success": True, "error": None})


def main():
    sly.logger.info("Script arguments", extra={
        "context.teamId": g.TEAM_ID,
        "device": g.DEVICE,
        "model": g.MODEL_NAME,
        'brs_mode': g.BRS_MODE,
        'prob_thresh': g.PROB_THRESH,
        'net_clicks_limit': g.LOG_NET_CLICKS,
        'lbfgs_max_iters': g.LBFGS_MAX_ITERS
    })

    load_model.deploy()
    g.my_app.run()


if __name__ == "__main__":
    sly.main_wrapper("main", main)
