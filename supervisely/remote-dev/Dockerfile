
ARG IMAGE
FROM $IMAGE

# cuda:11.1-cudnn8-runtime-ubuntu20.04 + py3.8 + opencv + other bacis CV packages
# learn more here: https://github.com/supervisely/supervisely/blob/master/base_images/py/Dockerfile

RUN mkdir /ritm_models
# download checkpoints
RUN wget -O /ritm_models/sbd_h18_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/sbd_h18_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h18_baseline.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_baseline.pth
RUN wget -O /ritm_models/coco_lvis_h18s_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18s_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h18_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h32_itermask.pth https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h32_itermask.pth


# install pytorch
RUN pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip3 install supervisely==6.35.0 diskcache==5.2.1 easydict tensorboard
RUN pip3 install opencv-python-headless Pillow matplotlib imgaug>=0.4
RUN pip3 install albumentations>0.5 graphviz tqdm pyyaml
RUN pip3 install future cffi ninja



RUN apt-get update && apt-get install -y openssh-server
EXPOSE 22

RUN apt-get install -y sudo
RUN mkdir -p /run/sshd



# MORE SECURE: use a trusted RSA key
ARG home=/root
RUN mkdir $home/.ssh
COPY authorized_keys $home/.ssh/authorized_keys
RUN chown root:root $home/.ssh/authorized_keys && \
    chmod 600 $home/.ssh/authorized_keys

COPY sshd_deamon.sh /sshd_deamon.sh
RUN chmod 755 /sshd_deamon.sh
CMD ["/sshd_deamon.sh"]
ENTRYPOINT ["sh", "-c", "/sshd_deamon.sh"]
