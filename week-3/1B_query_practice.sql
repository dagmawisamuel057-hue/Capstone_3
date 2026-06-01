-- 1. Write a query to list the product id, product name, and unit price of every product that Northwind sells.
SELECT ProductID, ProductName, UnitPrice
FROM products;
-- 2. Write a query to identify the products where the unit price is $7.50 or less.
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;
-- 3. What are the products that we carry where we have no units on hand, but 1 or more units are on backorder?
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0;
-- 4. Examine the products table. How does it identify the type (category) of each item sold?
SELECT * FROM products;
-- Where can you find a list of all categories?
SELECT * FROM categories;
-- Create a list of all the seafood items we carry.
SELECT p.ProductName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Seafood';
-- 5. Examine the products table again. How do you know what supplier each product comes from?
SELECT * FROM products;
-- Where can you find info on suppliers?
SELECT * FROM suppliers;
-- Find the specific identifier for Tokyo Traders.
SELECT SupplierID, CompanyName
FROM suppliers
WHERE CompanyName = 'Tokyo Traders';
-- Find all products from Tokyo Traders.
SELECT ProductName, SupplierID
FROM products
WHERE SupplierID = (
    SELECT SupplierID
    FROM suppliers
    WHERE CompanyName = 'Tokyo Traders'
)-- Find all products from Tokyo Traders.
SELECT ProductName, SupplierID
FROM products
WHERE SupplierID = (
    SELECT SupplierID
    FROM suppliers
    WHERE CompanyName = 'Tokyo Traders'
);
-- 6. How many employees work at northwind?
SELECT COUNT(*) AS total_employees
FROM employees;
-- What employees have "manager" somewhere in their job title?
SELECT FirstName, LastName, Title
FROM employees
WHERE Title LIKE '%manager%';