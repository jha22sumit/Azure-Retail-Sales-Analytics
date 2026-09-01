

CREATE DATABASE RetailSalesDB;
USE RetailSalesDB;
SELECT DB_NAME() AS current_database;
CREATE VIEW dbo.vw_retail_sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales;


