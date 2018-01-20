SELECT '' AS 'Ji Hong Ahn';
SELECT '' AS 'PROG2220: Section #2';
SELECT '' AS 'Assignment 5: Task 3';

SELECT SYSDATE() AS "Current System Date";

USE my_guitar_shop;

SELECT "";
SELECT "" AS "*** Task 3, Q1. MGS Exercise 12-3 [5 points] ***";

CREATE OR REPLACE VIEW JA_order_item_products AS
SELECT o.order_id,
	order_date,
	item_price,
	discount_amount,
	(item_price - discount_amount) AS final_price,
	quantity,
	(item_price - discount_amount) * quantity AS item_total,
	product_name
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

SELECT * FROM JA_order_item_products;

SELECT "";
SELECT "" AS "*** Task 3, Q2. MGS Exercise 12-4 [2 points] ***";

SELECT order_id, product_name, item_total
FROM JA_order_item_products
ORDER BY product_name, order_id;
-- In the XXA05Task3.out file(below), the order is wrong
-- order_id	product_name	item_total
-- 7	Fender Stratocaster	489.30
-- 9	Fender Stratocaster	489.30
-- 7	Fender Precision	559.99
-- Fender Precision should come before the Fender Stratocaster
--
--  So, this should be like this:
-- order_id	product_name	item_total
-- 7	Fender Precision	559.99
-- 7	Fender Stratocaster	489.30
-- 9	Fender Stratocaster	489.30

SELECT "";
SELECT "" AS "*** Task 3, Q3. MGS Exercise 12-5 [4 points] ***";

CREATE OR REPLACE VIEW JA_product_summary AS
SELECT product_name, COUNT(order_id) AS order_count, SUM(item_total) AS order_total
FROM JA_order_item_products
GROUP BY product_name;

SELECT "";
SELECT "" AS "*** Task 3, Q4. MGS Exercise 12-6 [2 points] ***";

SELECT product_name, order_total
FROM JA_product_summary
ORDER BY order_total DESC
LIMIT 5;