USE sample_sales;
SHOW TABLES;
USE sample_sales;

SELECT *
FROM management
WHERE Sales_Manager = 'Erbayne Middleton';
DESCRIBE management;
SELECT *
FROM management
WHERE SalesManager = 'Erbayne Middleton';
-- Learning Note: Calculate total revenue for Maine stores
SELECT 
    SUM(ss.Sale_Amount) AS Total_Revenue,
    MIN(ss.Transaction_Date) AS Start_Date,
    MAX(ss.Transaction_Date) AS End_Date
FROM store_sales ss
JOIN store_locations sl ON ss.Store_ID = sl.StoreID
WHERE sl.State = 'Maine';
SELECT 
    SUM(ss.Sale_Amount) AS Total_Revenue,
    MIN(ss.Transaction_Date) AS Start_Date,
    MAX(ss.Transaction_Date) AS End_Date
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
WHERE sl.State = 'Maine';
SHOW TABLES;
SELECT COUNT(*) FROM Store_Sales;
SELECT 
    SUM(ss.Sale_Amount) AS Total_Revenue,
    MIN(ss.Transaction_Date) AS Start_Date,
    MAX(ss.Transaction_Date) AS End_Date
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
WHERE sl.State = 'Maine';
SELECT 
    SUM(ss.Sale_Amount) AS Total_Revenue,
    MIN(ss.Transaction_Date) AS Start_Date,
    MAX(ss.Transaction_Date) AS End_Date
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
WHERE sl.State = 'Maine';
SELECT 
    DATE_FORMAT(ss.Transaction_Date, '%Y-%m') AS Month,
    SUM(ss.Sale_Amount) AS Monthly_Revenue
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
WHERE sl.State = 'Maine'
GROUP BY Month
ORDER BY Month;
SELECT 
    ic.Category,
    SUM(ss.Sale_Amount) AS Total_Revenue
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
JOIN Products p ON ss.Prod_Num = p.ProdNum
JOIN inventory_subategories isc ON p.Subcategoryid = isc.Subcategoryid
JOIN inventory_categories ic ON isc.Categoryid = ic.Categoryid
WHERE sl.State = 'Maine'
GROUP BY ic.Category
ORDER BY Total_Revenue DESC;
