USE superstore_db;

DROP TABLE IF EXISTS cleaned_superstore;

CREATE TABLE cleaned_superstore (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(100),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(150),
    Segment VARCHAR(50),
    Country VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code INT,
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(100),
    Sub_Category VARCHAR(100),
    Product_Name TEXT,
    Sales DECIMAL(10,4),
    Quantity INT,
    Discount DECIMAL(10,4),
    Profit DECIMAL(10,4),
    Year INT,
    Month INT,
    Month_Name VARCHAR(20),
    Profit_Margin DECIMAL(18,8)
);

SHOW TABLES;