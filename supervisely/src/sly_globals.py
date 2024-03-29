import os
import torch

import supervisely as sly
from diskcache import Cache
from dotenv import load_dotenv
from supervisely.app.v1.app_service import AppService
from supervisely.io.fs import get_file_ext, get_file_name_with_ext, mkdir

if sly.is_development():
    load_dotenv("supervisely/local.env")
    load_dotenv(os.path.expanduser("~/supervisely.env"))

TASK_ID = sly.env.task_id()
TEAM_ID = sly.env.team_id()

my_app = AppService()
api: sly.Api = my_app.public_api

work_dir = os.path.join(my_app.data_dir, "work_dir")
mkdir(work_dir, True)
img_dir = os.path.join(work_dir, "img")

# Create Cache
cache_dir = os.path.join(work_dir, "diskcache")
# cache = Cache(directory=cache_dir)
# cache_item_expire_time = 600  # seconds
mkdir(cache_dir)
mkdir(img_dir)


### MODE
MODE = os.environ["modal.state.modelMode"]
if MODE == "pretrained":
    available_models = [
        "sbd_h18_itermask.pth",
        "coco_lvis_h18_baseline.pth",
        "coco_lvis_h18s_itermask.pth",
        "coco_lvis_h18_itermask.pth",
        "coco_lvis_h32_itermask.pth",
    ]

    MODEL = int(os.environ["modal.state.model"])
    MODEL_NAME = available_models[MODEL]
else:
    CUSTOM_WEIGHTS_PATH = os.environ["modal.state.weightsPath"]
    if not CUSTOM_WEIGHTS_PATH.endswith(".pth"):
        raise ValueError(
            f"Unsupported weights extension {get_file_ext(CUSTOM_WEIGHTS_PATH)}. "
            f"Supported extension: '.pth'"
        )
    MODEL_NAME = get_file_name_with_ext(CUSTOM_WEIGHTS_PATH)

### PARAMS
CONTROLLER = None
NET = None
PREDICTOR_PARAMS = None
DEVICE = os.environ["modal.state.device"]

if DEVICE == "cuda" and torch.cuda.is_available() is False:
    # fallback to CPU
    sly.logger.warn(
        f"Chosen device is {DEVICE}, but torch.cuda.is_available() is False. The model will be loaded on CPU which may lead to slower inference."
    )
    DEVICE = "cpu"

BRS_MODE = int(os.environ["modal.state.brs_mode"])
PROB_THRESH = float(os.environ["modal.state.prob_thresh"])
NET_CLICKS_LIMIT = int(os.environ["modal.state.net_clicks_limit"])
LOG_NET_CLICKS = NET_CLICKS_LIMIT
LBFGS_MAX_ITERS = int(os.environ["modal.state.lbfgs_max_iters"])
UNLIMITED = os.getenv("modal.state.net_clicks_unlimited").lower() in ("true", "1", "t")
USE_ZOOM_IN = os.getenv("modal.state.zoomin_resize").lower() in ("true", "1", "t")

if UNLIMITED:
    NET_CLICKS_LIMIT = 2**10000
    LOG_NET_CLICKS = "INF"

if USE_ZOOM_IN:
    ZOOM_IN_PARAMS = dict(
        target_size=None,
        skip_clicks=-1,
        expansion_ratio=1.4,
        min_crop_size=200,
        recompute_thresh_iou=0.7,
        target_size_range=(256, 1024)
    )
else:
    ZOOM_IN_PARAMS = None

available_brs_modes = [
    "NoBRS",
    "RGB-BRS",
    "DistMap-BRS",
    "f-BRS-A",
    "f-BRS-B",
    "f-BRS-C",
]
BRS_MODE = available_brs_modes[BRS_MODE]
