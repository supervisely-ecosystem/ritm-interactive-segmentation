# cuda:11.1-cudnn8-runtime-ubuntu20.04 + py3.8 + opencv + other bacis CV packages
# learn more here: https://github.com/supervisely/supervisely/blob/master/base_images/py/Dockerfile
FROM supervisely/base-py-sdk:6.73.102

RUN mkdir /ritm_models
# download checkpoints
RUN wget -O /ritm_models/sbd_h18_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/sbd_h18_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h18_baseline.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_baseline.pth
RUN wget -O /ritm_models/coco_lvis_h18s_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18s_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h18_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h32_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h32_itermask.pth


# install deps
RUN pip3 install absl-py==1.4.0 albumentations==1.3.0 aniso8601==9.0.1 anyio==3.6.2 arel==0.2.0 async-asgi-testclient==1.4.11
RUN pip3 install beautifulsoup4==4.11.2 bidict==0.22.1 cachetools==5.3.0 certifi==2022.12.7 cffi==1.15.1 charset-normalizer==3.1.0
RUN pip3 install click==8.1.3 cmake==3.26.0 contourpy==1.0.7 cycler==0.11.0 Cython==0.29.33 diskcache==5.4.0 distinctipy==1.2.2
RUN pip3 install docker==6.0.1 easydict==1.10 executing==1.2.0 ffmpeg-python==0.2.0 filelock==3.10.0
RUN pip3 install fastapi==0.94.1 Flask==2.2.3 Flask-RESTful==0.3.9 Jinja2==3.1.2
RUN pip3 install fonttools==4.39.2 future==0.18.3 gitdb==4.0.10
RUN pip3 install GitPython==3.1.31 giturlparse==0.10.0 google-auth==2.16.2 google-auth-oauthlib==0.4.6
RUN pip3 install graphviz==0.20.1 grpcio==1.51.3 h11==0.14.0 httptools==0.5.0 idna==3.4
RUN pip3 install imagecorruptions==1.1.2 imageio==2.26.0 imgaug==0.4.0 importlib-metadata==6.0.0 importlib-resources==5.12.0
RUN pip3 install itsdangerous==2.1.2 joblib==1.2.0 jsonpatch==1.32 jsonpointer==2.3 jsonschema==2.6.0 kiwisolver==1.4.4
RUN pip3 install lazy_loader==0.1 lit==15.0.7 Markdown==3.4.1 markdown-it-py==2.2.0 MarkupSafe==2.1.2
RUN pip3 install matplotlib==3.7.1 mdurl==0.1.2 mpmath==1.3.0 multidict==6.0.4 networkx==3.0 ninja==1.11.1 numerize==0.12 numpy==1.24.2
RUN pip3 install nvidia-cublas-cu11==11.10.3.66 nvidia-cuda-cupti-cu11==11.7.101 nvidia-cuda-nvrtc-cu11==11.7.99 nvidia-cuda-runtime-cu11==11.7.99
RUN pip3 install nvidia-cudnn-cu11==8.5.0.96 nvidia-cufft-cu11==10.9.0.58 nvidia-curand-cu11==10.2.10.91
RUN pip3 install nvidia-cusolver-cu11==11.4.0.1 nvidia-cusparse-cu11==11.7.4.91 nvidia-nccl-cu11==2.14.3
RUN pip3 install nvidia-nvtx-cu11==11.7.91
RUN pip3 install oauthlib==3.2.2 opencv-python==4.7.0.72 opencv-python-headless==4.7.0.72
RUN pip3 install packaging==23.0 pandas==1.5.2 pascal-voc-writer==0.1.4
RUN pip3 install Pillow==9.4.0 plotly==5.13.1 protobuf==3.20.3
RUN pip3 install pycparser==2.21 pydantic==1.10.6 pydicom==2.3.1 Pygments==2.14.0 pynrrd==0.4.3
RUN pip3 install pyparsing==3.0.9 python-dateutil==2.8.2 python-dotenv==0.21.1
RUN pip3 install python-json-logger==0.1.11 python-magic==0.4.27 python-multipart==0.0.5 pytz==2022.7.1
RUN pip3 install PyWavelets==1.4.1 PyYAML==6.0 qudida==0.0.4 requests==2.28.2 requests-oauthlib==1.3.1
RUN pip3 install requests-toolbelt==0.10.1 rich==13.3.2 rsa==4.9
RUN pip3 install scikit-image==0.20.0 scikit-learn==1.2.2 scikit-video==1.1.11 scipy==1.9.1
RUN pip3 install Shapely==1.8.5.post1 SimpleITK==2.2.1 six==1.16.0 sk-video==1.1.10 smmap==5.0.0
RUN pip3 install sniffio==1.3.0 soupsieve==2.4 starlette==0.26.1 stringcase==1.2.0
RUN pip3 install supervisely==6.73.486
RUN pip3 install sympy==1.11.1 tenacity==8.2.2
RUN pip3 install tensorboard==2.12.0 tensorboard-data-server==0.7.0 tensorboard-plugin-wit==1.8.1
RUN pip3 install threadpoolctl==3.1.0 tifffile==2023.3.15
RUN pip3 install torch==2.0.0
RUN pip3 install torchvision==0.15.1
RUN pip3 install tqdm==4.65.0
RUN pip3 install trimesh==3.20.2
RUN pip3 install triton==2.0.0
RUN pip3 install urllib3==1.26.15 uvicorn==0.21.1 uvloop==0.17.0
RUN pip3 install varname==0.11.0 watchfiles==0.18.1 watchgod==0.6 websocket-client==1.5.1
RUN pip3 install websockets==10.4 Werkzeug==2.2.3 zipp==3.15.0

LABEL python_sdk_version=6.73.486
