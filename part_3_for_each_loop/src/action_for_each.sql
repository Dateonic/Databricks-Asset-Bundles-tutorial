-- Databricks notebook source




INSERT INTO  IDENTIFIER(CONCAT_WS('.',:catalog, :schema, :brand_suffix)) (td_id, brand, customer_source, segment, age_band)
 VALUES   ('for_each_worked', 'for_each_worked', 'for_each_worked', 'for_each_worked', 'for_each_worked');
