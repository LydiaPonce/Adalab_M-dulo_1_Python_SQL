#Ejercicio 1
USE Northwind;
SELECT MAX(UnitPrice) AS HighestPrice, MIN(UnitPrice) AS LowerPrice
FROM Products;

#Ejercicio 2
USE Northwind;
SELECT COUNT(ProductID), AVG(UnitPrice)
FROM Products;

#Ejercicio 3
USE Northwind;
SELECT MAX(Freight), MIN(Freight), ShipCountry
FROM Orders
WHERE ShipCountry = 'UK';

#Ejercicio 4
USE Northwind;
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice >= 28.86
ORDER BY UnitPrice DESC;

#Ejercicio 5
USE Northwind;
SELECT ProductName, Discontinued
FROM Products
WHERE Discontinued =1;

#Ejercicio 6
USE Northwind;
SELECT ProductID, ProductName, Discontinued
FROM Products
ORDER BY ProductID DESC
LIMIT 10;