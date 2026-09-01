# Retail Sales Analytics — Azure Data & Power BI Project

## 📌 Project Overview

An end-to-end retail sales analytics project using Microsoft Azure and Power BI.

The pipeline ingests a retail sales CSV into Azure Data Lake Storage Gen2, cleans and transforms the data with Azure Databricks/PySpark, queries curated data using Azure Synapse Analytics, and presents business insights through an interactive Power BI dashboard.

## 🏗️ Architecture
![image alt](https://github.com/jha22sumit/C:\Users\dell\Downloads\Architecture screenshot.png)  

```text
CSV Sales Data
      ↓
Azure Data Factory
      ↓
ADLS Gen2 — RAW
      ↓
Azure Databricks / PySpark
      ↓
Data Cleaning & Transformation
      ↓
ADLS Gen2 — PROCESSED / CURATED
      ↓
Azure Synapse Analytics
      ↓
Serverless SQL / OPENROWSET / SQL Views
      ↓
Power BI
      ↓
Interactive Retail Sales Dashboard
```

## 🛠️ Technologies

- Azure Data Factory (ADF)
- Azure Data Lake Storage Gen2 (ADLS Gen2)
- Azure Databricks
- PySpark
- Azure Synapse Analytics
- Serverless SQL
- T-SQL
- Power BI
- DAX

## 📂 Data Pipeline

### 1. Data Ingestion — Azure Data Factory

Azure Data Factory Copy Data was used to ingest the retail sales CSV into ADLS Gen2.

The lake was organized into:

```text
RAW
PROCESSED
CURATED
```

### 2. Data Cleaning — Azure Databricks

Azure Databricks with PySpark was used for profiling, cleaning, and transformation.

Activities included:

- Identifying and removing duplicate records
- Identifying NULL values
- Handling missing Quantity values
- Checking data types
- Working with date fields
- Creating month-related fields
- Preparing analytics-ready data

### Data Quality Result

```text
Original records: 2,502
Records after duplicate removal: 2,500
```

NULL values were identified in fields including `Region` and `Quantity`. Quantity was handled while maintaining its numeric data type.

## 🔎 Azure Synapse Analytics

Synapse Serverless SQL was used as the analytics layer to query curated data stored in ADLS Gen2.

Key techniques:

- `OPENROWSET`
- T-SQL
- Aggregations
- `GROUP BY`
- Data type conversion
- SQL Views

Analytical views included:

```text
vw_retail_sales
vw_monthly_sales
vw_region_sales
vw_product_sales
vw_customer_sales
```

## 📊 Power BI Dashboard

The final report is a single-page interactive dashboard.

### KPI Cards

- Total Sales
- Total Profit
- Total Quantity
- Total Orders
- Profit Margin %

### Visualizations

- Monthly Sales Trend
- Sales by Region
- Top 10 Products by Sales
- Top 10 Customers by Sales
- Profit by Region

### Slicers

- Year
- Region

The monthly trend is displayed chronologically:

```text
Jan → Feb → Mar → Apr → ... → Dec
```

The Year slicer allows analysis of monthly performance by year.

## 💡 Business Questions

The dashboard helps answer:

1. What are total sales and total profit?
2. How do sales change month by month?
3. Which regions generate the most sales?
4. Which regions generate the most profit?
5. Which products are the top sellers?
6. Which customers contribute the most sales?
7. How does performance change by year?
8. What is the overall profit margin?

## 🔐 Security

Azure managed identities and role-based access control were used during the Azure storage and Databricks configuration.

No credentials, access keys, tokens, or passwords should be committed to GitHub.

## 📁 Suggested Repository Structure

```text
retail-sales-azure-analytics/
│
├── README.md
├── data/
│   └── README.md
├── adf/
│   └── pipeline-documentation.md
├── databricks/
│   ├── data-cleaning.py
│   └── transformations.py
├── synapse/
│   ├── database-setup.sql
│   ├── openrowset.sql
│   └── views.sql
├── powerbi/
│   ├── Retail-Sales-Dashboard.pbix
│   └── dashboard-preview.png
└── docs/
    ├── architecture.png
    └── project-notes.md
```

> Do not upload confidential company data or any credentials, connection strings, access keys, tokens, or passwords to GitHub.

## 🚀 Project Workflow

1. Source retail CSV
2. Ingest using Azure Data Factory
3. Store raw data in ADLS Gen2
4. Clean and transform using Databricks/PySpark
5. Store processed/curated data in ADLS Gen2
6. Query curated data using Synapse Serverless SQL
7. Create analytical SQL views
8. Connect Power BI to Synapse
9. Build interactive KPIs, charts, and slicers
10. Validate dashboard results against SQL results

## 🎯 Skills Demonstrated

```text
Azure Data Factory
Azure Data Lake Storage Gen2
Azure Databricks
PySpark
Azure Synapse Analytics
Serverless SQL
T-SQL
Power BI
DAX
Data Cleaning
Data Transformation
Data Quality
Data Visualization
Business Analysis
```

## 📌 Portfolio Note

This is a hands-on portfolio project demonstrating an Azure-based retail analytics pipeline and Power BI reporting solution from data ingestion through business intelligence.
