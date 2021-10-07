import os
import supervisely_lib as sly
from supervisely_lib.io.fs import mkdir
from diskcache import Cache


my_app = sly.AppService()
api: sly.Api = my_app.public_api

TASK_ID = int(os.environ["TASK_ID"])
TEAM_ID = int(os.environ['context.teamId'])
WORKSPACE_ID = int(os.environ['context.workspaceId'])
PROJECT_ID = int(os.environ["modal.state.slyProjectId"])


work_dir = os.path.join(my_app.data_dir, "work_dir")
mkdir(work_dir, True)

img_dir = os.path.join(work_dir, "img")


# Create Cache
cache_dir = my_app.cache_dir
cache = Cache(directory=cache_dir)
cache_item_limit = 30
mkdir(cache_dir)
mkdir(img_dir)

# DEVICE
# devices: cpu, cuda, xpu, mkldnn, opengl, opencl,
# ideep, hip, msnpu, mlc, xla, vulkan, meta, hpu
DEVICE = "cpu"


# LOAD MODEL
import torch
import requests
import dl_progress
from supervisely_lib.io.fs import download
from isegm.inference.utils import load_is_model


def download_file_from_link(api, link, model_path, file_name, progress_message, app_logger):
    response = requests.head(link, allow_redirects=True)
    sizeb = int(response.headers.get('content-length', 0))
    progress_cb = dl_progress.get_progress_cb(api, TASK_ID, progress_message, sizeb, is_size=True)
    download(link, model_path, cache=my_app.cache, progress=progress_cb)
    dl_progress.reset_progress(api, TASK_ID)
    app_logger.info(f'{file_name} has been successfully downloaded')


model_link = "https://github.com/saic-vul/ritm_interactive_segmentation/releases/download/v1.0/coco_lvis_h32_itermask.pth"
model_name = "coco_lvis_h32_itermask.pth"
model_dir = os.path.join(work_dir, "model")
mkdir(model_dir)
model_path = os.path.join(model_dir, model_name)

download_file_from_link(api, model_link, model_path, model_name, f"Download {model_name}", my_app.logger)

model = torch.load(model_path, map_location=torch.device(DEVICE))
model = load_is_model(model, DEVICE)


# RITM CONTROLLER
from interactive_demo.controller import InteractiveController
# brs_modes = ['NoBRS', 'RGB-BRS', 'DistMap-BRS', 'f-BRS-A', 'f-BRS-B', 'f-BRS-C']

brs_mode = "NoBRS"
predictor_params = {'brs_mode': brs_mode}
controller = InteractiveController(model, DEVICE, predictor_params)



# MODEL SELECTOR
# models = {
#             "HRNet18 IT-M (SDB)": "https://github.com/saic-vul/ritm_interactive_segmentation/releases/download/v1.0/sbd_h18_itermask.pth",
#             "HRNet18 (COCO+LVIS)": "https://github.com/saic-vul/ritm_interactive_segmentation/releases/download/v1.0/coco_lvis_h18_baseline.pth",
#             "HRNet18s IT-M (COCO+LVIS)": "https://github.com/saic-vul/ritm_interactive_segmentation/releases/download/v1.0/coco_lvis_h18s_itermask.pth",
#             "HRNet18 IT-M (COCO+LVIS)": "https://github.com/saic-vul/ritm_interactive_segmentation/releases/download/v1.0/coco_lvis_h18_itermask.pth",
#             "HRNet32 IT-M (COCO+LVIS)": "https://github.com/saic-vul/ritm_interactive_segmentation/releases/download/v1.0/coco_lvis_h32_itermask.pth"
# }
