SELECT '' AS 'Ji Hong Ahn';
SELECT '' AS 'PROG2220: Section #2';
SELECT '' AS 'Assignment 5: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 2, Q1. SWE Exercise 1 [4 points] ***';

SELECT ROUND(AVG(score), 2) AS average
FROM evaluation JOIN consultant
ON evaluator_id = c_id
WHERE CONCAT_WS(' ', c_first, c_last) = 'Janet Park';

SELECT '';
SELECT '' AS '*** Task 2, Q2. SWE Exercise 2 [4 points] ***';

SELECT RPAD(p_id, 4, ' ') AS p_id,
	RPAD(c_id, 4, ' ') AS c_id,
    LPAD(TRUNCATE(DATEDIFF(roll_off_date, roll_on_date) / 30.4, 0), 6, ' ') AS months
FROM project_consultant;

SELECT '';
SELECT '' AS '*** Task 2, Q3. SWE Exercise 3 [5 points] ***';

SELECT LPAD(cs.c_id, 4, ' ') AS c_id,
	RPAD(CONCAT_WS(', ', c_last, c_first), 20, ' ') AS consultant_full_name,
    LPAD(skill_id, 8, ' ') AS skill_id,
    CASE certification
		WHEN 'Y' THEN 'Certified'
        WHEN 'N' THEN 'Not Certified'
        ELSE 'UNKNOWN'
		END AS certification
FROM consultant_skill cs JOIN consultant c
ON cs.c_id = c.c_id