#!/bin/bash

set -euo pipefail

source .config

docker exec -u ${MY_UID} \
  --workdir $WORK_DIR \
  ${CONTAINER_NM} \
  python -m pytest
