#!/bin/bash

set -euo pipefail

MY_UID=$UID

docker exec -u ${MY_UID} \
  --workdir /home/jovyan/spark-app/gill \
  spark-custom \
  python setup.py bdist_egg
