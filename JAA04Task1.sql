SELECT '' AS 'Ji Hong Ahn';
SELECT '' AS 'PROG2220: Section #2';
SELECT '' AS 'Assignment 4: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 1, Q1. MGS Exercise 6-1 [3 points] ***';

SELECT COUNT(*) AS order_count, SUM(tax_amount) AS tax_total
FROM orders;

SELECT '';
SELECT '' AS '*** Task 1, Q2. MGS Exercise 6-2 [4 points] ***';

SELECT c.category_name, count(*) AS product_count, MAX(p.list_price) AS most_expensive_product
FROM categories c JOIN products p
	ON c.category_id = p.category_id
GROUP BY category_name
ORDER BY most_expensive_product DESC;

SELECT '';
SELECT '' AS '*** Task 1, Q3. MGS Exercise 6-6 [3 points] ***';

SELECT p.product_name, SUM(((oi.item_price - oi.discount_amount) * oi.quantity)) AS product_total
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders od ON oi.order_id = od.order_id
GROUP BY product_name WITH ROLLUP;

SELECT '';
SELECT '' AS '*** Task 1, Q4. MGS Exercise 7-3 [3 points] ***';

SELECT category_name
FROM categories
WHERE NOT EXISTS
 (SELECT *
 FROM products
 WHERE category_id = categories.category_id);