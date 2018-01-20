SELECT '' AS 'Ji Hong Ahn';
SELECT '' AS 'PROG2220: Section #2';
SELECT '' AS 'Assignment 3: Task 3';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 3, Q1. SWE Exercise 1 [2 points] ***';

INSERT INTO consultant
(c_id, c_last, c_first, c_mi, c_add, c_city, c_state, c_zip, c_phone, c_email)
VALUES
(106, 'Ahn', 'Ji Hong', 'J', '111 Brookfield Cres.', 'Kitchener', 'ON', '54713', '1234567890', 'jahn2488@conestogac.on.ca');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT '';
SELECT '' AS '*** Task 3, Q2. SWE Exercise 2 [2 points] ***';

INSERT INTO client
(client_id, client_name, contact_last, contact_first, contact_phone)
VALUES
(17, 'City of Waterloo', 'Jaworsky', 'Dave', '5198861550');

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT '';
SELECT '' AS '*** Task 3, Q3. SWE Exercise 3 [3 points] ***';

INSERT INTO project
(p_id, project_name, client_id, mgr_id)
VALUES
(88, 'ION Rapid Transit', 17, 106);

SELECT ROW_COUNT() AS 'INSERT: rows affected';

SELECT '';
SELECT '' AS '*** Task 3, Q4. SWE Exercise 4 [3 points] ***';

UPDATE project
SET parent_p_id = 88
WHERE parent_p_id IS NULL AND p_id != 88;

SELECT ROW_COUNT() AS 'UPDATE: rows affected';