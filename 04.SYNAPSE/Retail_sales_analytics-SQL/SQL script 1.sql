SELECT COUNT(*) AS total_orders
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales;


SELECT
    ROUND(SUM(TRY_CAST(salesamount AS FLOAT)), 2) AS total_sales,
    ROUND(SUM(TRY_CAST(profit AS FLOAT)), 2) AS total_profit,
    ROUND(SUM(TRY_CAST(quantity AS FLOAT)), 2) AS total_quantity
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales;


SELECT
    region,
    ROUND(SUM(TRY_CAST(salesamount AS FLOAT)), 2) AS total_sales,
    ROUND(SUM(TRY_CAST(profit AS FLOAT)), 2) AS total_profit
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales
GROUP BY region
ORDER BY total_sales DESC;

SELECT
    order_month,
    ROUND(SUM(TRY_CAST(salesamount AS FLOAT)), 2) AS total_sales,
    ROUND(SUM(TRY_CAST(profit AS FLOAT)), 2) AS total_profit
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales
GROUP BY order_month
ORDER BY order_month;

SELECT TOP 10
    productid,
    ROUND(SUM(TRY_CAST(salesamount AS FLOAT)), 2) AS total_sales,
    ROUND(SUM(TRY_CAST(profit AS FLOAT)), 2) AS total_profit
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales
GROUP BY productid
ORDER BY total_sales DESC;


SELECT TOP 10
    customerId,
    ROUND(SUM(TRY_CAST(salesamount AS FLOAT)), 2) AS total_sales,
    ROUND(SUM(TRY_CAST(profit AS FLOAT)), 2) AS total_profit
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales
GROUP BY customerId
ORDER BY total_sales DESC;


SELECT
    region,
    ROUND(SUM(TRY_CAST(salesamount AS FLOAT)), 2) AS total_sales,
    ROUND(SUM(TRY_CAST(profit AS FLOAT)), 2) AS total_profit,
    ROUND(
        (SUM(TRY_CAST(profit AS FLOAT)) /
         NULLIF(SUM(TRY_CAST(salesamount AS FLOAT)), 0)) * 100,
        2
    ) AS profit_margin
FROM OPENROWSET(
    BULK 'https://retailsalesdata2026xxx.dfs.core.windows.net/retail-data/curated/retail_sales/*.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS sales
GROUP BY region
ORDER BY profit_margin DESC;


