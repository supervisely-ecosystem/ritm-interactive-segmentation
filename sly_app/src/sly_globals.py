import os

import supervisely as sly
from diskcache import Cache
from supervisely.io.fs import get_file_ext, get_file_name_with_ext, mkdir
from dotenv import load_dotenv
from interactive_demo.controller import InteractiveController

if sly.is_development():
    load_dotenv("sly_app/local.env")
    load_dotenv(os.path.expanduser("~/supervisely.env"))

TASK_ID = sly.env.task_id()
TEAM_ID = sly.env.team_id()
DATA_DIR = sly.app.get_data_dir()

# app = sly.Application()
api: sly.Api = sly.Api()

work_dir = os.path.join(DATA_DIR, "work_dir")
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
CONTROLLER: InteractiveController = None

DEVICE = os.environ["modal.state.device"]
BRS_MODE = int(os.environ["modal.state.brs_mode"])
PROB_THRESH = float(os.environ["modal.state.prob_thresh"])
NET_CLICKS_LIMIT = int(os.environ["modal.state.net_clicks_limit"])
LOG_NET_CLICKS = NET_CLICKS_LIMIT
LBFGS_MAX_ITERS = int(os.environ["modal.state.lbfgs_max_iters"])
UNLIMITED = os.getenv("modal.state.net_clicks_unlimited").lower() in ("true", "1", "t")
if UNLIMITED:
    NET_CLICKS_LIMIT = 2**10000
    LOG_NET_CLICKS = "INF"

available_brs_modes = [
    "NoBRS",
    "RGB-BRS",
    "DistMap-BRS",
    "f-BRS-A",
    "f-BRS-B",
    "f-BRS-C",
]
BRS_MODE = available_brs_modes[BRS_MODE]
