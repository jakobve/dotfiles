#!/usr/bin/env bash

set -eou pipefail

REPO_URL="$1"
REPO_NAME=$(basename "${REPO_URL}" .git)

echo "Cloning landscape repo..."

git clone --recurse-submodules "${REPO_URL}"

echo "Entering landscape repo"

cd "$REPO_NAME"

iacbox