import os
import torch
import requests
import sly_globals as g
import download_progress
import supervisely_lib as sly
from supervisely_lib.io.fs import mkdir
from supervisely_lib.io.fs import download
from isegm.inference.utils import load_is_model
from interactive_demo.controller import InteractiveController


def download_file_from_link(api, link, save_path, file_name, progress_message, app_logger):
    response = requests.head(link, allow_redirects=True)
    sizeb = int(response.headers.get('content-length', 0))
    progress_cb = download_progress.get_progress_cb(api, g.TASK_ID, progress_message, sizeb, is_size=True)
    download(link, save_path, cache=g.my_app.cache, progress=progress_cb)
    download_progress.reset_progress(api, g.TASK_ID)
    app_logger.info(f'{file_name} has been successfully downloaded')


def deploy():
    # devices: cpu, cuda, xpu, mkldnn, opengl, opencl, ideep, hip, msnpu, mlc, xla, vulkan, meta, hpu
    available_models = [
        "https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/sbd_h18_itermask.pth",
        "https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_baseline.pth",
        "https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18s_itermask.pth",
        "https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_itermask.pth",
        "https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h32_itermask.pth"
    ]

    model_link = available_models[g.MODEL]
    model_name = g.MODEL_NAME

    model_path = f"/ritm_models/{model_name}"
    if os.path.isfile(model_path) is False:
        model_dir = os.path.join(g.work_dir, "model")
        mkdir(model_dir)
        model_path = os.path.join(model_dir, model_name)
        download_file_from_link(g.api, model_link, model_path, model_name, f"Download {model_name}", g.my_app.logger)
    else:
        g.my_app.logger.info(f"{model_name} has been loaded from docker image")

    model = torch.load(model_path, map_location=torch.device(g.DEVICE))
    model = load_is_model(model, g.DEVICE)
    predictor_params = {
                'brs_mode': g.BRS_MODE,
                'prob_thresh': g.PROB_THRESH,
                'zoom_in_params': None,
                'predictor_params': {
                    'net_clicks_limit': g.NET_CLICKS_LIMIT
                },
                'lbfgs_params': {'maxfun': g.LBFGS_MAX_ITERS}
            }

    g.CONTROLLER = InteractiveController(model, g.DEVICE, predictor_params, prob_thresh=g.PROB_THRESH)
    sly.logger.info("🟩 Model has been successfully deployed")
