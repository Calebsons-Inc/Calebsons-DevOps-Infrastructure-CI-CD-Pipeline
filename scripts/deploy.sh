#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
IMAGE_NAME="${IMAGE_NAME:-devops-test}"
ENVIRONMENT="${ENVIRONMENT:-local}"

"${ROOT_DIR}/scripts/build.sh"

terraform -chdir="${ROOT_DIR}/infra/terraform" init -input=false
terraform -chdir="${ROOT_DIR}/infra/terraform" plan -input=false -var="image_name=${IMAGE_NAME}" -var="environment=${ENVIRONMENT}"
terraform -chdir="${ROOT_DIR}/infra/terraform" apply -auto-approve -input=false -var="image_name=${IMAGE_NAME}" -var="environment=${ENVIRONMENT}"
