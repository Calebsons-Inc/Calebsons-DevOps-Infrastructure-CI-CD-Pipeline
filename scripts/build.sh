#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
IMAGE_NAME="${IMAGE_NAME:-devops-test}"

docker build -f "${ROOT_DIR}/docker/Dockerfile" -t "${IMAGE_NAME}" "${ROOT_DIR}"
