# ============================================================================
# STAGE 1: Builder Stage
# ============================================================================

# todo: remove when hardened docker images are released
ARG tag_ref_name=0.0.1
# ARG tag_ref_name=6.73.xxx

FROM python:3.10-slim-bookworm AS builder

ENV LANG=C.UTF-8 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_PREFER_BINARY=1 \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  ca-certificates \
  ffmpeg \
  git \
  libboost-all-dev \
  libexiv2-27 \
  libgeos-c1v5 \
  libsm6 \
  libxext6 \
  libxrender1 \
  wget \
  && rm -rf /var/lib/apt/lists/*

# Install NVIDIA CUDA repo and CUDA runtime/toolkit components
RUN set -eux; \
  wget -qO /tmp/cuda-keyring.deb https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/cuda-keyring_1.1-1_all.deb; \
  dpkg -i /tmp/cuda-keyring.deb; \
  rm -f /tmp/cuda-keyring.deb; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    cuda-toolkit-12-8 \
    cuda-cudart-12-8 \
    libcublas-12-8 \
    libcufft-12-8 \
    libcurand-12-8 \
    libcusolver-12-8 \
    libcusparse-12-8; \
  rm -rf /var/lib/apt/lists/*

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install pip==26.0.1 setuptools==78.1.1

# Use a global pip constraint to keep binary wheels mutually compatible.
# We pin NumPy and key native deps that frequently break across NumPy major versions.
RUN printf "numpy==2.0.0\nscipy==1.14.1\nonnxruntime-gpu==1.19.2\nprotobuf==6.33.5\nonnx==1.17.0\nfilelock==3.20.3\npillow==12.1.1\n" > /tmp/pip-constraints.txt
ENV PIP_CONSTRAINT=/tmp/pip-constraints.txt
RUN pip install --no-cache-dir numpy==2.0.0 scipy==1.14.1

RUN pip install --upgrade \
  "jinja2==3.1.6" \
  "protobuf==6.33.5" \
  "jaraco.context==6.1.0" \
  wheel==0.46.2 \
  && rm -rf \
  /opt/venv/lib/python3.10/site-packages/setuptools/_vendor/jaraco.context* \
  /opt/venv/lib/python3.10/site-packages/setuptools/_vendor/wheel*

RUN mkdir -p /ritm_models
RUN wget -O /ritm_models/sbd_h18_itermask.pth \
  https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/sbd_h18_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h18_baseline.pth \
  https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_baseline.pth
RUN wget -O /ritm_models/coco_lvis_h18s_itermask.pth \
  https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18s_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h18_itermask.pth \
  https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h18_itermask.pth
RUN wget -O /ritm_models/coco_lvis_h32_itermask.pth \
  https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/coco_lvis_h32_itermask.pth

RUN pip install networkx==2.8.8
RUN pip install torch==2.7.1+cu128 torchvision==0.22.1+cu128 \
  --index-url https://download.pytorch.org/whl/cu128 \
  --extra-index-url https://pypi.org/simple
RUN pip install onnx==1.17.0
RUN pip install requests==2.28.2 urllib3==1.26.15 packaging==21.3 ruamel.yaml==0.17.21
RUN pip install dill==0.2.8.2
RUN pip install ultralytics==8.3.15
RUN pip install filelock==3.20.3 pillow==12.1.1
RUN pip install onnxruntime-gpu==1.19.2 \
  --extra-index-url https://aiinfra.pkgs.visualstudio.com/PublicPackages/_packaging/onnxruntime-cuda-12/pypi/simple/
RUN pip install diskcache==5.4.0 python-dotenv==0.21.1 tqdm==4.65.0

# todo: remove when hardened docker images are released
# RUN pip install supervisely[tracking,model-benchmark]==$tag_ref_name
# RUN python -c "from supervisely.nn.tracker import *"
RUN pip install git+https://github.com/supervisely/supervisely.git@hardened-docker-images

# ============================================================================
# STAGE 2: Runtime Stage (Hardened)
# ============================================================================
FROM supervisely/py-sdk-hardened:${tag_ref_name} AS runtime
ARG tag_ref_name

# Enforce the same NumPy constraint at runtime too (Supervisely may run pip on container start)
COPY --from=builder /tmp/pip-constraints.txt /etc/pip-constraints.txt
ENV PIP_CONSTRAINT=/etc/pip-constraints.txt

COPY --from=builder /opt/venv /opt/venv
COPY --from=builder /ritm_models /ritm_models
COPY --from=builder /usr/bin/ffmpeg /usr/bin/ffmpeg

COPY --from=builder /usr/lib/*-linux-gnu/libav*.so.* /usr/lib/
COPY --from=builder /usr/lib/*-linux-gnu/libsw*.so.* /usr/lib/
COPY --from=builder /usr/lib/*-linux-gnu/libgeos*.so.* /usr/lib/
COPY --from=builder /usr/lib/*-linux-gnu/libSM.so.* /usr/lib/
COPY --from=builder /usr/lib/*-linux-gnu/libXext.so.* /usr/lib/
COPY --from=builder /usr/lib/*-linux-gnu/libXrender.so.* /usr/lib/
COPY --from=builder /usr/lib/*-linux-gnu/libexiv2.so.* /usr/lib/
COPY --from=builder /usr/lib/*-linux-gnu/libboost*.so.* /usr/lib/

# CUDA runtime libs from apt-installed toolkit/runtime
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libcudart.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libcublas.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libcublasLt.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libcufft.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libcurand.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libcusolver.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libcusparse.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libnvrtc.so* /usr/lib/
COPY --from=builder /usr/local/cuda-12.8/targets/x86_64-linux/lib/libnvJitLink.so* /usr/lib/

# Clean up apt and dpkg to minimize attack surface and image size, since we won't need them at runtime
RUN set -eux; \
  rm -rf /var/lib/apt/lists/* /etc/apt /var/cache/apt /var/lib/apt; \
  rm -f /usr/bin/apt /usr/bin/apt-get /usr/bin/apt-cache /usr/bin/apt-config /usr/bin/apt-key \
        /usr/bin/dpkg /usr/bin/dpkg-query /usr/bin/dpkg-deb /usr/bin/dpkg-divert; \
  rm -rf /var/lib/dpkg /usr/share/dpkg || true

ENV PATH="/opt/venv/bin:$PATH" \
    LD_LIBRARY_PATH="/usr/lib:/usr/local/lib"

# Set NVIDIA Container Toolkit environment variables for GPU support
ENV NVIDIA_VISIBLE_DEVICES=all \
    NVIDIA_DRIVER_CAPABILITIES=compute,utility

LABEL python_sdk_version="$tag_ref_name"
