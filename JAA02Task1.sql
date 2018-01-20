-- cd "C:\xampp\mysql\bin"
-- mysql -u root -p < G:\mysql\JAA01Task1.sql > G:\mysql\JAA01Task1.out

SELECT '' AS 'Ji Hong Ahn';
SELECT '' AS 'PROG2220: Section #2';
SELECT '' AS 'Assignment 2: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 1, Q1. MGS Exercise 4-1 [5 points] ***';

SELECT category_name, product_name, list_price
FROM categories
INNER JOIN products ON categories.category_id = products.category_id
ORDER BY category_name, product_name;

SELECT '';
SELECT '' AS '*** Task 1, Q2. MGS Exercise 4-2 [5 points] ***';

SELECT first_name, last_name, line1, city, state, zip_code
FROM customers
INNER JOIN addresses ON customers.customer_id = addresses.customer_id
WHERE email_address = "allan.sherwood@yahoo.com";

SELECT '';
SELECT '' AS '*** Task 1, Q3. MGS Exercise 4-4 [5 points] ***';

SELECT last_name, first_name, order_date, product_name, item_price, discount_amount, quantity
FROM customers
	INNER JOIN orders ON customers.customer_id = orders.customer_id
	INNER JOIN order_items ON orders.order_id = order_items.order_id
	INNER JOIN products ON order_items.product_id = products.product_id
ORDER BY last_name, order_date, product_name;

SELECT '';
SELECT '' AS '*** Task 1, Q4. MGS Exercise 4-5 [5 points] ***';

SELECT A.product_id, A.product_name, A.list_price
FROM products A, products B
WHERE A.list_price = B.list_price && A.product_id <> B.product_id;

SELECT '';
SELECT '' AS '*** Task 1, Q5. MGS Exercise 4-7 [5 points] ***';

SELECT 'SHIPPED' AS ship_status, order_id, order_date
FROM orders
WHERE ship_date IS NOT NULL
UNION
SELECT 'NOT SHIPPED' AS ship_status, order_id, order_date
FROM orders
WHERE ship_date IS NULL
ORDER BY order_date