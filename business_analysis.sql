-- ============================================================
-- Superstore Sales Business Analysis Queries
-- Author: Honey Bhatt
-- Date: March 2026
-- Description: SQL queries to extract business insights from
--              the cleaned Superstore retail dataset
-- ============================================================
USE superstore_db;

-- ============================================================
-- 1. REGIONAL PERFORMANCE
-- ============================================================

-- Total Sales by Region (descending)
-- Finding: West region leads with $0.73M in sales

SELECT Region, SUM(Sales) AS Total_Sales
FROM cleaned_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Total Profit by Region (descending)
-- Finding: West also leads in profit

SELECT Region, SUM(Profit) AS Total_Profit
FROM cleaned_superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- ============================================================
-- 2. CATEGORY PERFORMANCE
-- ============================================================

-- Total Sales by Product Category
-- Finding: Technology leads, followed by Furniture and Office Supplies

SELECT Category, SUM(Sales) AS Total_Sales
FROM cleaned_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Top 10 Sub-Categories by Sales
-- Finding: Phones and Chairs tie at $0.33M each

SELECT Sub_Category, SUM(Sales) AS Total_Sales
FROM cleaned_superstore
GROUP BY Sub_Category
ORDER BY Total_Sales DESC
LIMIT 10;

-- ============================================================
-- 3. PROFITABILITY ANALYSIS
-- ============================================================

-- Profit Margin by Category (%)
-- Finding: Technology has highest margin; Furniture lowest

SELECT 
    Category,
    SUM(Profit)/SUM(Sales) * 100 AS Profit_Margin
FROM cleaned_superstore
GROUP BY Category
ORDER BY Profit_Margin DESC;

-- ============================================================
-- 4. DATA VALIDATION
-- ============================================================

-- Verify row counts match between tables

SELECT COUNT(*) FROM final_superstore;
SELECT COUNT(*) FROM cleaned_superstore;
