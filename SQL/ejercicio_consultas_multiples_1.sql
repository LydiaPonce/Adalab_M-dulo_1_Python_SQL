#Ejercicio 1
USE Northwind;
SELECT orders.order_id, orders.ship_country, customers.company_name
FROM orders, customers
WHERE orders.ship_country ='UK';

#Ejercicio 2
USE Northwind;
SELECT products.quantity_per_unit, orders.ship_name, orders.ship_country, YEAR(orders.order_date) AS Año
FROM products, orders
WHERE orders.ship_country ='UK';


#Ejercicio 3
USE Northwind;
SELECT orders.ship_name, orders.ship_country, YEAR(orders.order_date) AS Año, orderdetails.unit_price AS DineroTotal, orderdetails.quantity, orderdetails.discount
FROM orders, orderdetails
WHERE orders.ship_country ='UK'
ORDER BY orders.ship_name;

#Ejercicio 4
USE Northwind;
SELECT customers.company_name, orders.order_id, orders.order_date
FROM customers, orders
ORDER BY customers.company_name;

#Ejercicio 5
USE Northwind;
SELECT products.product_name, products.category_id, orderdetails.quantity, orderdetails.discount, orderdetails.order_id
FROM orderdetails, products
ORDER BY products.product_name;