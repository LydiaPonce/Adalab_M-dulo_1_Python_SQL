#Ejercicio 1
USE Northwind;
SELECT COUNT(DISTINCT OrderID) AS NumPedidos, MAX(Freight) AS CargaMaxima, EmployeeID
FROM Orders
GROUP BY (OrderID);

#Ejercicio 2
USE Northwind;
SELECT COUNT(OrderID) AS NumPedidos, MAX(Freight) AS CargaMaxima, EmployeeID AS Empleado
FROM Orders
WHERE ShippedDate IS NOT NULL
GROUP BY (EmployeeID);

#Ejercicio 3
USE Northwind;
SELECT COUNT(DISTINCT OrderID), DAY(OrderDate) AS Dia, MONTH(OrderDate) AS Mes, YEAR(OrderDate) AS Año
FROM Orders
GROUP BY (OrderDate)
HAVING COUNT(DISTINCT OrderID);

#Ejercicio 4
USE Northwind;
SELECT COUNT(DISTINCT OrderID), MONTH(OrderDate) AS Mes, YEAR(OrderDate) AS Año
FROM Orders
GROUP BY (OrderDate)
HAVING COUNT(DISTINCT OrderID);

#Ejercicio 5
USE Northwind;
SELECT  City, COUNT(DISTINCT EmployeeID) AS CantEmpleados
FROM Employees
GROUP BY City
HAVING COUNT(DISTINCT EmployeeID)>=4;

#Ejercicio 6
USE Northwind;
SELECT OrderID, UnitPrice,
CASE 
     WHEN UnitPrice >2000 THEN 'Alto' 
     ELSE 'Bajo' 
     END AS Precio
FROM OrderDetails;




