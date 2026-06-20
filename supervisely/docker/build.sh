#!/usr/bin/env bash
set -euo pipefail

TAG_VERSION="${1:-6.73.572}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../.." && pwd)"

docker build \
  --build-arg tag_ref_name="${TAG_VERSION}" \
  --build-arg REQUIREMENTS_FILE=dev_requirements.txt \
  -f "${SCRIPT_DIR}/Dockerfile" \
  -t "supervisely/ritm:${TAG_VERSION}" \
  "${REPO_ROOT}"
docker push "supervisely/ritm:${TAG_VERSION}"
