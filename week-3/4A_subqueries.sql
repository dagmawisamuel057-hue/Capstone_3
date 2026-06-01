use northwind;
SELECT ProductName
FROM products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM products
);
SELECT p.ProductName, c.CategoryName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (
    SELECT MIN(UnitPrice)
    FROM products
);
SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE ShipVia = (
    SELECT ShipperID
    FROM shippers
    WHERE CompanyName = 'Federal Shipping'
);
SELECT OrderID
FROM `order details`
WHERE ProductID = (
    SELECT ProductID
    FROM products
    WHERE ProductName = 'Sasquatch Ale'
);
SELECT FirstName, LastName
FROM employees
WHERE EmployeeID = (
    SELECT EmployeeID
    FROM orders
    WHERE OrderID = 10266
);
SELECT CompanyName
FROM customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM orders
    WHERE OrderID = 10266
);
