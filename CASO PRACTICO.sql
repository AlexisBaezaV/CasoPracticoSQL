SELECT * FROM menu_items;
-- Encontrar el número de artículos en el menú.
--R:32
SELECT COUNT(*) FROM menu_items;
-- ¿Cuál es el artículo menos caro y el más caro en el menú?
--Menos Caro = Edamame , Mas caro = Shrimp Scampi 
SELECT item_name, price
FROM menu_items
ORDER BY price ASC;
-- ¿Cuántos platos americanos hay en el menú?
--R=6
SELECT count(menu_item_id)
FROM menu_items
WHERE category = 'American';
-- ¿Cuál es el precio promedio de los platos?
-- R=13.29
SELECT ROUND(AVG(price),2) as promedio_platillo 
FROM menu_items;

SELECT * FROM order_details;

--¿Cuántos pedidos únicos se realizaron en total?
--R=5370
SELECT COUNT(DISTINCT order_id) FROM order_details;
--¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?
--R: orders_id:443,1957,330,440,2675,3473,4305
SELECT COUNT (item_id), order_id
FROM order_details
WHERE item_id IS NOT NULL
GROUP BY order_id
ORDER BY 1 DESC
LIMIT 10;
--¿Cuándo se realizó el primer pedido y el último pedido?
--R: primer pedido= 2023-01-01 11:38:36 y último pedido=2023-03-31 22:15:48
SELECT order_id, order_date, order_time
FROM order_details
ORDER BY order_date, order_time ASC
LIMIT 1;
SELECT order_id, order_date, order_time
FROM order_details
ORDER BY order_date DESC, order_time DESC
LIMIT 1;
--¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
--R=308
SELECT COUNT(DISTINCT order_id) as num_ordenes
FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

--d) Usar ambas tablas para conocer la reacción de los clientes respecto al menú.
--1.- Realizar un left join entre entre order_details y menu_items con el identificador
--item_id(tabla order_details) y menu_item_id(tabla menu_items)

SELECT *
FROM order_details as ordenes
LEFT JOIN menu_items as menu
ON ordenes.item_id = menu.menu_item_id;

--Cual fue la categoria mas pedida y menos pedida
--Más pedida = Asian y menos pedida =American
SELECT  category, COUNT(order_details_id) as num_articulos
FROM order_details as ordenes
LEFT JOIN menu_items as menu
ON ordenes.item_id = menu.menu_item_id
GROUP BY category
HAVING category IS NOT NULL
ORDER BY 2 DESC;
--Cual fue la categoria que mas ingresos generó y la que menos
--Mas ingreso:Mexican, Menos ingreso:American
SELECT category, SUM(price) as total_ingresos
FROM order_details as ordenes
LEFT JOIN menu_items as menu
ON ordenes.item_id = menu.menu_item_id
GROUP BY category
HAVING category IS NOT NULL
ORDER BY 1 DESC;
--Cuales fueron los 10 productos mas vendidos 
--Hamburguer, Edamame, Korean Beef Bowl, Cheeseburger, French Fries, Tofu Pad Thai, Steak torta, Spaghetti & Meatballs, Mac & Cheese, Chips & Salsa
SELECT item_name, COUNT(item_id) as num_articulos
FROM order_details as ordenes
LEFT JOIN menu_items as menu
ON ordenes.item_id = menu.menu_item_id
GROUP BY item_name
HAVING item_name IS NOT NULL
ORDER BY 2 DESC
LIMIT 10;
--Cuales fueron los 10 productos que mas ingresos generaron
--Korean Beef Bow, Spaghetti & Meatballs, Tofu Pad Thai , Cheeseburger, Hamburger, Orange Chicken, Eggplant Parmesan, Steak Torta, Chicken Parmesan, Pork Ramen
SELECT item_name, sum(price) as total_ingresos
FROM order_details as ordenes
LEFT JOIN menu_items as menu
ON ordenes.item_id = menu.menu_item_id
GROUP BY item_name
HAVING item_name IS NOT NULL
ORDER BY 2 DESC
LIMIT 10;
--Cuales fueron los 10 productos menos vendidos
--Hamburguer, Edamame, Korean Beef Bowl, Cheeseburger, French Fries, Tofu Pad Thai, Steak torta, Spaghetti & Meatballs, Mac & Cheese, Chips & Salsa
SELECT item_name, COUNT(item_id) as num_articulos
FROM order_details as ordenes
LEFT JOIN menu_items as menu
ON ordenes.item_id = menu.menu_item_id
GROUP BY item_name
HAVING item_name IS NOT NULL
ORDER BY 2 ASC
LIMIT 10;