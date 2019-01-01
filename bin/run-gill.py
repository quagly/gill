#!/usr/bin/env python
"""run-gill.py

  Script to run through spark-submit with egg attached

"""

from gill.spark import * 
from gill.mission import with_life_goal

# get spark session from gill.spark
spark = get_spark()

source_data = [
    ("jose", 1),
    ("li", 2)
]


source_df = spark.createDataFrame(
    source_data,
    ["name", "age"]
)
actual_df = with_life_goal(source_df)
actual_df.show()
