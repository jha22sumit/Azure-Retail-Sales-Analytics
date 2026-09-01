# Azure-Retail-Sales-Analytics
# Azure Retail Sales Analytics

## 📌 Project Overview

This project demonstrates an end-to-end Retail Sales Analytics solution using Microsoft Azure, Databricks, Synapse Analytics, SQL, and Power BI.

The objective is to ingest raw retail sales data, store it in Azure Data Lake Storage Gen2, clean and transform the data using Azure Databricks, apply business logic using SQL, and build an interactive Power BI dashboard to generate meaningful business insights.

---

## 🏗️ Project Architecture

```text
Raw Sales Data
      │
      ▼
Azure Data Factory
      │
      ▼
ADLS Gen2 - RAW
      │
      ▼
Azure Databricks
(Data Cleaning & Transformation)
      │
      ▼
ADLS Gen2 - PROCESSED
      │
      ▼
Databricks / SQL
(Business Logic)
      │
      ▼
ADLS Gen2 - CURATED
      │
      ▼
Azure Synapse Analytics
      │
      ▼
Power BI
(Dashboard & Reporting)
