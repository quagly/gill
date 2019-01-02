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

pip install -r requirements.txt

python -m pytest

python setup.py bdist_egg

spark-submit \
  --master local[*] \
  --py-files dist/gill-0.0.1-py3.6.egg \
  bin/run-gill.py
