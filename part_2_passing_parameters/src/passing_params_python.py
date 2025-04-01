# Databricks notebook source

# COMMAND ----------

dbutils.widgets.text("parameter", "")
dbutils.widgets.text("var_from_config", "")
dbutils.widgets.text("local_p", "")

param = dbutils.widgets.get("parameter")
var = dbutils.widgets.get("var_from_config")
local = dbutils.widgets.get("local_p")

# COMMAND ----------
print(param)

# COMMAND ----------
print(var)

# COMMAND ----------
print(local)


