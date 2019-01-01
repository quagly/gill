#!/bin/bash

set -euo pipefail

MY_UID=$UID

docker exec -u ${MY_UID} \
  --workdir /home/jovyan/spark-app/gill \
  --env SPARK_CONF_DIR=/home/jovyan/spark-app/conf \
  spark-custom \
  spark-submit \
    --master local[*] \
    --py-files dist/gill-0.0.1-py3.6.egg \
    bin/run-gill.py
