# cuda:11.1-cudnn8-runtime-ubuntu20.04 + py3.8 + opencv + other bacis CV packages
# learn more here: https://github.com/supervisely/supervisely/blob/master/base_images/py/Dockerfile
FROM supervisely/base-py-sdk:6.1.97

# install pytorch
RUN pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip3 install supervisely==6.1.97 diskcache==5.2.1 easydict tensorboard
RUN pip3 install opencv-python-headless Pillow matplotlib imgaug>=0.4
RUN pip3 install albumentations>0.5 graphviz tqdm pyyaml
RUN pip3 install future cffi ninja
