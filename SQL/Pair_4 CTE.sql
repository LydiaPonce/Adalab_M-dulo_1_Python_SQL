USE Northwind;

/* CLASE 4 DE ABRIL CONSULTAS CTES*/

/*EJERCICIO 1: Extraer en una CTE todos los nombres de las compañias y los id de los clientes.
Para empezar nos han mandado hacer una CTE muy sencilla el id del cliente y el nombre de la compañia de la tabla
 Customers.*/
CREATE TABLE datos_compañia;

WITH datos_compañia AS (
	SELECT company_name, customer_id
    FROM customers)
SELECT *
FROM datos_compañia;

/*EJERCICIO 2: Selecciona solo los de que vengan de "Germany"
Ampliemos un poco la query anterior. En este caso, queremos un resultado similar al anterior, 
pero solo queremos los que pertezcan a "Germany".*/

WITH datoscompañia AS (
	SELECT company_name, customer_id, country
    FROM customers
    WHERE country = "Germany")
SELECT *
FROM datoscompañia;

/*EJERCICIO 3: Extraed el id de las facturas y su fecha de cada cliente.
En este caso queremos extraer todas las facturas que se han emitido a un cliente, su fecha la compañia a la que pertenece.
📌 NOTA En este caso tendremos columnas con elementos repetidos(CustomerID, y Company Name).*/

WITH datos_compañia AS (
	 SELECT order_id, order_date, customer_id
     FROM orders)
SELECT customers.company_name, datos_compañia.order_id,datos_compañia.order_date,datos_compañia.customer_id
FROM customers 
JOIN datos_compañia 
ON customers.customer_id = datos_compañia.customer_id;

/*EJERCICIO 4: Contad el número de facturas por cliente
Mejoremos la query anterior. En este caso queremos saber el número de facturas emitidas por cada cliente.*/

WITH datos_compañia AS (
	 SELECT orders.order_id, orders.order_date, customers.customer_id, customers.company_name
     FROM orders INNER JOIN customers ON customers.customer_id = orders.customer_id)
SELECT datos_compañia.customer_id, COUNT(datos_compañia.order_id) AS total_facturas, datos_compañia.company_name AS nombre_compañia
FROM datos_compañia
GROUP BY datos_compañia.customer_id;

/*EJERCICIO 5: BONUS
Cuál la cantidad media pedida de todos los productos ProductID.
Necesitaréis extraet la suma de las cantidades por cada producto y calcular la media de to */

-- NO TERMINADO --


