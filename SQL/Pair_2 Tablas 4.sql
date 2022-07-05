USE Northwind;

/*1 Extraer info de productos beberages*/
SELECT product_id, product_name, category_id
FROM products
WHERE category_id IN (SELECT category_id FROM categories WHERE category_name = 'Beverages');

/*2 Lista de países donde viven clientes pero ahí no hay proveedor*/
SELECT company_name, country
FROM customers
WHERE country NOT IN (SELECT country FROM suppliers);

/*3 Clientes que compraron +20 'Grandma's Boysenberry Spread'*/
SELECT customer_id, COUNT(order_id)
FROM orders
WHERE category_id IN (SELECT product_id FROM products WHERE product_id = 6);

/*4 10 productos más caros*/
SELECT product_name, product_id, unit_price
FROM products
ORDER BY unit_price desc
LIMIT 10;

/*5 Producto más vendido y qué cantidad ha sido BONUS*/ 

-- intento 1 no acabado --
#SELECT product_name, product_id, units_on_order, quantity
#FROM products
#WHERE product_id IN (SELECT quantity FROM orderDetails)
#ORDER BY units_on_order desc;
-- intento 2 no acabado --
#SELECT quantity
#FROM orderdetails INNER JOIN products ON (SELECT product_id, product_name FROM products);

