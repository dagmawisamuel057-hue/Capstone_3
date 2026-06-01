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
-- Question 1: Calculate total revenue for Maine stores
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
-- Question 2: Monthly revenue trend for Maine
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
-- Learning Note: Identify top-performing products in Maine
SELECT 
    p.Product,
    SUM(ss.Sale_Amount) AS Total_Revenue
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
JOIN Products p ON ss.Prod_Num = p.ProdNum
WHERE sl.State = 'Maine'
GROUP BY p.Product
ORDER BY Total_Revenue DESC
LIMIT 10;
-- Question 3: Compare Maine territory revenue to total Northeast region revenue
SELECT 
    'Maine Territory' AS Analysis_Level,
    SUM(ss.Sale_Amount) AS Total_Revenue
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
WHERE sl.State = 'Maine'

UNION ALL

SELECT 
    'Northeast Region' AS Analysis_Level,
    SUM(ss.Sale_Amount) AS Total_Revenue
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
JOIN management m ON sl.State = m.State
WHERE m.Region = 'Northeast';
-- Question 4: Transactions per month and average transaction size by category (Maine)
SELECT 
    DATE_FORMAT(ss.Transaction_Date, '%Y-%m') AS Month,
    ic.Category,
    COUNT(*) AS Transaction_Count,
    ROUND(AVG(ss.Sale_Amount), 2) AS Avg_Transaction_Size
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
JOIN Products p ON ss.Prod_Num = p.ProdNum
JOIN inventory_subategories isc ON p.Subcategoryid = isc.Subcategoryid
JOIN inventory_categories ic ON isc.Categoryid = ic.Categoryid
WHERE sl.State = 'Maine'
GROUP BY Month, ic.Category
ORDER BY Month, ic.Category;
-- Question 5: Rank Maine stores by performance
SELECT 
    sl.StoreId,
    sl.StoreLocation,
    SUM(ss.Sale_Amount) AS Total_Revenue,
    COUNT(*) AS Transaction_Count,
    ROUND(AVG(ss.Sale_Amount), 2) AS Avg_Transaction_Size
FROM Store_Sales ss
JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
WHERE sl.State = 'Maine'
GROUP BY sl.StoreId, sl.StoreLocation
ORDER BY Total_Revenue DESC;
-- Question 6: Recommendation
-- Based on the analysis, South Portland is the top-performing store in Maine, generating the highest total revenue.
-- Other strong-performing locations include Orono and Kennebunkport.
-- Since transaction counts are relatively similar across stores, the difference in performance is driven more by average transaction size.
-- This suggests that higher-value purchases contribute significantly to revenue growth.
-- Therefore, the company should focus on increasing average transaction size in lower-performing stores by promoting higher-value products,
-- bundling items, or targeting customer segments that are more likely to make larger purchases.
-- Additionally, successful strategies from top-performing stores like South Portland should be analyzed and replicated across other locations. 

