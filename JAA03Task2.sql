-- cd C:\xampp\mysql\bin
-- mysql -u root -p < G:\mysql\db_setup\create_databases.sql
-- mysql -u root -p < G:\mysql\XXA03Task0.sql > G:\mysql\XXA03Task0.out

SELECT '' AS 'Ji Hong Ahn';
SELECT '' AS 'PROG2220: Section #2';
SELECT '' AS 'Assignment 3: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 2, Q1. MGS Exercise 5-1 [8 points] ***';

INSERT INTO categories (category_name)
VALUE ('Wind');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

UPDATE categories
SET category_name = 'String'
WHERE category_id = LAST_INSERT_ID();

SELECT ROW_COUNT() AS 'UPDATE: rows affected';

DELETE FROM categories
WHERE category_id = LAST_INSERT_ID();

SELECT ROW_COUNT() AS 'DELETE: rows affected';

SELECT '';
SELECT '' AS '*** Task 2, Q2. MGS Exercise 5-4 [6 points] ***';

INSERT INTO products
(product_id, category_id, product_code, product_name, description, list_price, discount_percent, date_added)
VALUES
(DEFAULT, 4, 'dgx_640', 'Yamaha DGX 640 Digital Piano', 'This is the Yamaha DGX 640 Digital Piano with 88 keys.', 845.95, 10, SYSDATE());

SELECT ROW_COUNT() AS 'INSERT: rows affected';

UPDATE products
SET discount_percent = 30
WHERE product_id = LAST_INSERT_ID();

SELECT ROW_COUNT() AS 'UPDATE: rows affected';

SELECT '';
SELECT '' AS '*** Task 2, Q3. MGS Exercise 5-7 [6 points] ***';

INSERT INTO customers
(email_address, password, first_name, last_name)
VALUES
('jahn2488@conestogac.on.ca', '', 'Ji Hong', 'Ahn');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

UPDATE customers
SET password = 's3cr3t'
WHERE email_address = 'jahn2488@conestogac.on.ca';

SELECT ROW_COUNT() AS 'UPDATE: rows affected';
