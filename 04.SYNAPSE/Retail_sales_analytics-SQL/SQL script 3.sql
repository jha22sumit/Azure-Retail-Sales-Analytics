SELECT TOP 10 *
FROM dbo.vw_retail_sales;

CREATE DATABASE RetailSalesDB;

CREATE VIEW dbo.vw_monthly_sales
AS
SELECT
    order_month,
    SUM(TRY_CAST(salesamount AS FLOAT)) AS total_sales,
    SUM(TRY_CAST(profit AS FLOAT)) AS total_profit,
    SUM(TRY_CAST(quantity AS FLOAT)) AS total_quantity
FROM dbo.vw_retail_sales
GROUP BY order_month;


SELECT *
FROM dbo.vw_monthly_sales
ORDER BY order_month;


CREATE VIEW dbo.vw_region_sales
AS
SELECT
    region,
    SUM(TRY_CAST(salesamount AS FLOAT)) AS total_sales,
    SUM(TRY_CAST(profit AS FLOAT)) AS total_profit,
    SUM(TRY_CAST(quantity AS FLOAT)) AS total_quantity
FROM dbo.vw_retail_sales
GROUP BY region;

SELECT *
FROM dbo.vw_region_sales
ORDER BY total_sales DESC;


CREATE VIEW dbo.vw_product_sales
AS
SELECT
    productid,
    SUM(TRY_CAST(salesamount AS FLOAT)) AS total_sales,
    SUM(TRY_CAST(profit AS FLOAT)) AS total_profit,
    SUM(TRY_CAST(quantity AS FLOAT)) AS total_quantity
FROM dbo.vw_retail_sales
GROUP BY productid;


SELECT TOP 10 *
FROM dbo.vw_product_sales
ORDER BY total_sales DESC;


CREATE VIEW dbo.vw_customer_sales
AS
SELECT
    customerId,
    SUM(TRY_CAST(salesamount AS FLOAT)) AS total_sales,
    SUM(TRY_CAST(profit AS FLOAT)) AS total_profit,
    SUM(TRY_CAST(quantity AS FLOAT)) AS total_quantity
FROM dbo.vw_retail_sales
GROUP BY customerId;


SELECT TOP 10 *
FROM dbo.vw_customer_sales
ORDER BY total_sales DESC;