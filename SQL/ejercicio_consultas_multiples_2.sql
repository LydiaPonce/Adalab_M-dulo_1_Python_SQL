#Ej1
USE Northwind;
SELECT customers.company_name, orders.order_id, orders.order_date
FROM customers, orders;

#Ej2
USE Northwind;
SELECT orders.ship_country AS PaisEnvio, customers.company_name AS NombreCompañia, COUNT(orders.order_id) AS NumPedidos
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id
WHERE orders.ship_country ='UK'
GROUP BY (customers.company_name); 

#Ej3
USE Northwind;
SELECT customers.company_name, orders.order_id, customers.contact_name, orders.order_date
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.ship_country ='UK';

#Ej4
USE Northwind;
SELECT A.employee_id AS IDEmpleado, A.first_name AS Nombre, A.last_name AS Apellido, B.employee_id AS IDEmpleado, B.first_name AS Nombre, B.last_name AS Apellido, B.reports_to AS Responsable
FROM employees A, employees B
WHERE A.employee_id <> B.employee_id
AND A.reports_to = B.reports_to;

#Ej BONUS
USE Northwind;
SELECT orders.order_id,customers.company_name, orders.order_date
FROM orders
LEFT JOIN customers
ON orders.customer_id = customers.customer_id
UNION
SELECT orders.order_id, customers.company_name, orders.order_date
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;

