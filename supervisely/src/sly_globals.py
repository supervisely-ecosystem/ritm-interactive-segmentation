import os
from diskcache import Cache
import supervisely_lib as sly
from supervisely_lib.io.fs import mkdir


my_app = sly.AppService()
api: sly.Api = my_app.public_api

TASK_ID = int(os.environ["TASK_ID"])
TEAM_ID = int(os.environ['context.teamId'])

work_dir = os.path.join(my_app.data_dir, "work_dir")
mkdir(work_dir, True)
img_dir = os.path.join(work_dir, "img")

# Create Cache
cache_dir = os.path.join(work_dir, "diskcache")
cache = Cache(directory=cache_dir)
cache_item_expire_time = 600  # seconds
mkdir(cache_dir)
mkdir(img_dir)

DEVICE = os.environ["modal.state.device"]
MODEL = int(os.environ["modal.state.model"])
CONTROLLER = None

BRS_MODE = int(os.environ["modal.state.brs_mode"])
PROB_THRESH = float(os.environ["modal.state.prob_thresh"])
NET_CLICKS_LIMIT = int(os.environ["modal.state.net_clicks_limit"])
LOG_NET_CLICKS = NET_CLICKS_LIMIT
LBFGS_MAX_ITERS = int(os.environ["modal.state.lbfgs_max_iters"])
UNLIMITED = os.getenv("modal.state.net_clicks_unlimited").lower() in ('true', '1', 't')
if UNLIMITED:
    NET_CLICKS_LIMIT = 2**10000
    LOG_NET_CLICKS = "INF"

available_brs_modes = ['NoBRS', 'RGB-BRS', 'DistMap-BRS', 'f-BRS-A', 'f-BRS-B', 'f-BRS-C']
BRS_MODE = available_brs_modes[BRS_MODE]

available_models = ["sbd_h18_itermask.pth", "coco_lvis_h18_baseline.pth", "coco_lvis_h18s_itermask.pth",
                    "coco_lvis_h18_itermask.pth", "coco_lvis_h32_itermask.pth"]
MODEL_NAME = available_models[MODEL]
