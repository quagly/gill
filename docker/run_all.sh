#!/bin/bash
#
# resolve dependcies
# test
# create egg
# run spark submit
#
# Create Date: 2019-Jan-02
# Author: Michael West
###########################

set -euxo pipefail

source .config

docker exec -u ${MY_UID} \
  --workdir ${WORK_DIR} \
  ${CONTAINER_NM} \
  docker/all.sh
