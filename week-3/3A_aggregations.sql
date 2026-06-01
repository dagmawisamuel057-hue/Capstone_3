USE northwind;
SELECT MIN(UnitPrice) AS CheapestPrice
FROM products;
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (
    SELECT MIN(UnitPrice)
    FROM products
);
SELECT AVG(UnitPrice) AS AveragePrice
FROM products;
SELECT ROUND(AVG(UnitPrice), 2) AS AveragePrice
FROM products;
SELECT MAX(UnitPrice) AS MostExpensivePrice
FROM products;
SELECT p.ProductName, p.UnitPrice, s.CompanyName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM products
);
SELECT SUM(Salary) AS TotalMonthlyPayroll
FROM employees;
SELECT MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary
FROM employees;
SELECT s.CompanyName, s.SupplierID, COUNT(p.ProductID) AS ItemCount
FROM suppliers s
JOIN products p ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName, s.SupplierID;
SELECT c.CategoryName, AVG(p.UnitPrice) AS AveragePrice
FROM categories c
JOIN products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;
SELECT s.CompanyName, COUNT(p.ProductID) AS ItemCount
FROM suppliers s
JOIN products p ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName
HAVING COUNT(p.ProductID) >= 5;
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue
FROM products
WHERE UnitsInStock > 0
ORDER BY InventoryValue DESC, ProductName ASC;