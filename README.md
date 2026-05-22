# Superstore Sales Analysis — End-to-End Data Pipeline & Dashboard


## Overview

An end-to-end data analytics project on the Superstore retail dataset — covering data cleaning, MySQL database design, business analysis SQL queries, and an interactive Tableau dashboard.

**Key Results:**
- 💰 $2.30M Total Sales | $286.40K Total Profit | 12.47% Profit Margin
- 🏆 West region led all regions with $0.73M in sales
- 📱 Phones and Chairs tied as top sub-categories at $0.33M each
- ⚠️ Furniture had the lowest profit margin despite strong sales volume

---

## Project Structure

```
superstore-sales-analysis/
│
├── Superstore.csv                  # Raw dataset (9,994 records, 21 columns)
├── cleaned_superstore.csv          # Cleaned and feature-engineered dataset
│
├── superstore_data_cleaning.ipynb  # Python data cleaning notebook
│
├── database_setup.sql              # MySQL schema and table creation
├── data_insert.sql                 # SQL INSERT statements for data ingestion
├── business_analysis.sql           # Business analysis queries
│
└── README.md
```

---

## Pipeline Overview

```
Raw CSV → Python Cleaning → Cleaned CSV → MySQL Database → SQL Analysis → Tableau Dashboard
```

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| Python (pandas) | Data cleaning & feature engineering |
| MySQL | Database design & storage |
| SQL | Business analysis queries |
| Tableau | Interactive dashboard |

---

## Data Cleaning (Python)

**File:** `superstore_data_cleaning.ipynb`

Steps performed:
- Parsed `Order Date` and `Ship Date` from string to datetime format
- Renamed all columns for MySQL compatibility (spaces/hyphens → underscores)
- Engineered new features: `Year`, `Month`, `Month_Name`, `Profit_Margin`
- Validated data quality: 0 duplicate rows, 0 invalid sales values
- Identified 1,871 rows with negative profit (valid — caused by high discounts)
- Exported cleaned CSV and generated SQL INSERT statements

---

## Database Setup (MySQL)

**File:** `database_setup.sql`

- Created `superstore_db` database
- Designed `cleaned_superstore` table with proper data types and constraints
- Ingested 9,994 records via batched INSERT statements (`data_insert.sql`)

---

## Business Analysis (SQL)

**File:** `business_analysis.sql`

| Query | Key Finding |
|-------|------------|
| Sales by Region | West: $0.73M, East: $0.68M, Central: $0.50M, South: $0.39M |
| Sales by Category | Technology > Furniture > Office Supplies |
| Top 10 Sub-Categories | Phones & Chairs tied at $0.33M |
| Profit Margin by Category | Technology highest; Furniture lowest |

---

## Tableau Dashboard

Interactive dashboard built with 4 KPI cards and 4 charts:
- **KPIs:** Total Profit, Total Sales, Total Quantity, Profit Margin
- **Profit by Category** (bar chart)
- **Sales by Region** (bar chart)
- **Monthly Sales Trend** (line chart)
- **Top 10 Products by Sales** (bar chart)
- **Filters:** Region, Category

---

## How to Run

1. Clone this repository
2. Run `superstore_data_cleaning.ipynb` in Jupyter to reproduce the cleaned dataset
3. In MySQL, run `database_setup.sql` then `data_insert.sql` to set up the database
4. Run `business_analysis.sql` to reproduce the business insights

---

## Author

**Honey Bhatt**  
MS Business Analytics | UT Arlington '25  
[LinkedIn](https://www.linkedin.com/in/honeythakkar)
