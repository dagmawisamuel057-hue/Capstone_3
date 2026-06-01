USE northwind;

/*
a) The table that holds the items Northwind sells is products.
b) The table that holds the types or categories of the items Northwind sells is categories.
*/
SELECT * FROM employees;
-- The employee whose name looks like she is a bird is Nancy FreeHafer.
SELECT * FROM products;
-- This query returns [put the number Workbench shows] records.
-- To retrieve only 10 rows using the toolbar, highlight just this query and use the limit row count option in Workbench if available, or edit the query with LIMIT 10.
-- Bonus: You can limit the number of rows returned by writing:
-- SELECT * FROM products LIMIT 10;
-- Source used: MySQL syntax / independent research.
SELECT * FROM products;
-- This query returns [77] records.
SELECT * FROM products;
SELECT * FROM categories;
SELECT * FROM categories;
-- The category id of Seafood is 8.
SELECT OrderID, OrderDate, ShipName, ShipCountry
FROM orders
LIMIT 50;
