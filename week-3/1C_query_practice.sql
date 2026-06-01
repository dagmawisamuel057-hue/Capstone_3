-- 1. List product id, product name, and unit price ordered from lowest to highest price.
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice ASC;
SELECT ProductName, UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
SELECT ProductName, UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;
SELECT COUNT(DISTINCT CustomerID) AS CustomerCount
FROM orders;
SELECT ShipCountry, COUNT(DISTINCT CustomerID) AS CustomerCount
FROM orders
GROUP BY ShipCountry
ORDER BY CustomerCount DESC;
SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock < 25 AND UnitsOnOrder > 0
ORDER BY UnitsOnOrder DESC, ProductName ASC;
SELECT Title, COUNT(*) AS EmployeeCount
FROM employees
GROUP BY Title;
SELECT FirstName, LastName, Title, Salary
FROM employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title ASC;