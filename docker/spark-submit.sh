#!/bin/bash

set -euo pipefail

source .config

docker exec -u ${MY_UID} \
  --workdir ${WORK_DIR} \
  ${CONTAINER_NM} \
  spark-submit \
    --master local[*] \
    --py-files dist/gill-0.0.1-py3.6.egg \
    bin/run-gill.py
