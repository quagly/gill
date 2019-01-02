#!/bin/bash

set -euxo pipefail

source .config

docker exec -u ${MY_UID} \
  --workdir ${WORK_DIR} \
  ${CONTAINER_NM} \
  pip install -r requirements.txt
