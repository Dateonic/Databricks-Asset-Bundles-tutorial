-- Databricks notebook source

-- IDENTIFIER(CONCAT_WS('.',:catalog, :schema, :brand_suffix))

-- CREATE OR REPLACE TABLE customerdev.bronze.brands (
--     brand_suffix STRING,
--     created_at TIMESTAMP
-- );
CREATE OR REPLACE TABLE IDENTIFIER(CONCAT_WS('.',:catalog, :schema, 'brands')) (
    brand_suffix STRING,
    created_at TIMESTAMP
);

INSERT INTO IDENTIFIER(CONCAT_WS('.',:catalog, :schema, 'brands')) (brand_suffix, created_at)
VALUES
    ('nike', CURRENT_TIMESTAMP()),
    ('adidas', CURRENT_TIMESTAMP()),
    ('puma', CURRENT_TIMESTAMP());


CREATE OR REPLACE TABLE IDENTIFIER(CONCAT_WS('.',:catalog, :schema, 'nike')) AS
SELECT * FROM (
  VALUES
    ('NK001', 'Nike', 'Online Store', 'Premium', '18-24'),
    ('NK002', 'Nike', 'Retail Store', 'Standard', '25-34'),
    ('NK003', 'Nike', 'Mobile App', 'Premium', '35-44'),
    ('NK004', 'Nike', 'Online Store', 'Standard', '45-54'),
    ('NK005', 'Nike', 'Partner Store', 'Premium', '25-34'),
    ('NK006', 'Nike', 'Mobile App', 'Standard', '18-24'),
    ('NK007', 'Nike', 'Retail Store', 'Premium', '35-44'),
    ('NK008', 'Nike', 'Online Store', 'Standard', '55+')
) AS t (td_id, brand, customer_source, segment, age_band);

CREATE OR REPLACE TABLE IDENTIFIER(CONCAT_WS('.',:catalog, :schema, 'adidas')) AS
SELECT * FROM (
  VALUES
    ('AD001', 'Adidas', 'Online Store', 'Standard', '18-24'),
    ('AD002', 'Adidas', 'Mobile App', 'Premium', '25-34'),
    ('AD003', 'Adidas', 'Retail Store', 'Standard', '35-44'),
    ('AD004', 'Adidas', 'Partner Store', 'Premium', '45-54'),
    ('AD005', 'Adidas', 'Online Store', 'Standard', '25-34'),
    ('AD006', 'Adidas', 'Mobile App', 'Premium', '18-24'),
    ('AD007', 'Adidas', 'Retail Store', 'Standard', '35-44'),
    ('AD008', 'Adidas', 'Partner Store', 'Premium', '55+')
) AS t (td_id, brand, customer_source, segment, age_band);

CREATE OR REPLACE TABLE IDENTIFIER(CONCAT_WS('.',:catalog, :schema, 'puma')) AS
SELECT * FROM (
  VALUES
    ('PM001', 'Puma', 'Mobile App', 'Standard', '18-24'),
    ('PM002', 'Puma', 'Online Store', 'Premium', '25-34'),
    ('PM003', 'Puma', 'Retail Store', 'Standard', '35-44'),
    ('PM004', 'Puma', 'Partner Store', 'Premium', '45-54'),
    ('PM005', 'Puma', 'Mobile App', 'Standard', '25-34'),
    ('PM006', 'Puma', 'Online Store', 'Premium', '18-24'),
    ('PM007', 'Puma', 'Retail Store', 'Standard', '35-44'),
    ('PM008', 'Puma', 'Partner Store', 'Premium', '55+')
) AS t (td_id, brand, customer_source, segment, age_band);