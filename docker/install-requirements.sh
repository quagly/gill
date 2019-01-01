#!/bin/bash

set -euo pipefail

MY_UID=$UID

docker exec -u ${MY_UID} \
  --workdir /home/jovyan/spark-app/gill \
  spark-custom \
  pip install -r requirements.txt
