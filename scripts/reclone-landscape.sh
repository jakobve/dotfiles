#!/usr/bin/env bash

set -eou pipefail

REPO_URL="$1"
REPO_NAME=$(basename "${REPO_URL}" .git)

rm -rf "${REPO_NAME}"

echo "Landscape directory deleted"

BASE_DIR=$(dirname "$0")

source "${BASE_DIR}/clone-landscape.sh" ${REPO_URL}