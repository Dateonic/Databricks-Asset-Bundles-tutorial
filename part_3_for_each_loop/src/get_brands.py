# Databricks notebook source

import json

dbutils.widgets.text("catalog", "")
dbutils.widgets.text("schema", "")
dbutils.widgets.text("table", "")


catalog = dbutils.widgets.get("catalog")
schema = dbutils.widgets.get("schema")
table = dbutils.widgets.get("table")

id_param = dbutils.widgets.get("id")

print(f"Param ID: {id_param}, {catalog}, {schema}")

print(f"catalog: {catalog}")
print(f"schema: {schema}")
print(f"table: {table}")

query = f"""
SELECT DISTINCT brand_suffix
FROM {catalog}.{schema}.{table}
ORDER BY brand_suffix ASC
"""

df = spark.sql(query)
brand_suffix_list = [row["brand_suffix"] for row in df.collect()]


dbutils.jobs.taskValues.set("brand_suffix", json.dumps(brand_suffix_list))