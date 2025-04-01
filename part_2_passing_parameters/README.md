# Databricks-Asset-Bundles-tutorial
Databricks Asset Bundles tutorial

In this tutorial you'll learn about
- What are Databricks Asset Bundles (DABs)
- What are they used for
- Basic setup
- First workflow created through bundles

Useful links:

- For installing databricks CLI visit: https://docs.databricks.com/aws/en/dev-tools/cli/install
- General tutorial: https://docs.databricks.com/aws/en/dev-tools/bundles/jobs-tutorial
- Official bundle examples: https://github.com/databricks/bundle-examples


Main learnings:
- Using notebooks is useful for data discovery but as a good practice we don't want to keep production code there - there's no formatting, it makes it difficult for code review.
- You can run both SQL and Python files as notebook using a all-purpose databricks job cluster if you start file with comment "Databricks notebook source", respecitvely #Databricks notebook source for Python and --Databricks notebook source for SQL
- You can create separate cells in .py and .sql by #COMMAND or --COMMAND

If you're looking for more knowledge about DABs, try asking questions on https://community.databricks.com/ or contact us through our website https://dateonic.com/contact-us/  
