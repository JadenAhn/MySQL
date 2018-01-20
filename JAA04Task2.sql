SELECT '' AS 'Ji Hong Ahn';
SELECT '' AS 'PROG2220: Section #2';
SELECT '' AS 'Assignment 4: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 2, Q1. SWE Exercise 1 [2 points] ***';

SELECT ROUND(AVG(score), 1) AS 'Average Score'
FROM evaluation
WHERE evaluatee_id = 105;

SELECT '';
SELECT '' AS '*** Task 2, Q2. SWE Exercise 2 [2 points] ***';

SELECT COUNT(*) AS 'Number of Certified'
FROM consultant_skill
WHERE skill_id = 1;

SELECT '';
SELECT '' AS '*** Task 2, Q3. SWE Exercise 3 [4 points] ***';

SELECT c_first, c_last
FROM consultant
WHERE c_id IN
	(SELECT c_id
	FROM project_consultant
	WHERE p_id IN
		(SELECT p_id
		FROM project_consultant pc
		JOIN consultant c ON pc.c_id = c.c_id
		WHERE CONCAT(c.c_first, ' ', c.c_last) = 'Mark Myers')
	);

SELECT '';
SELECT '' AS '*** Task 2, Q4. SWE Exercise 4 [5 points] ***';

SELECT DISTINCT p_id, project_name
FROM project
WHERE p_id IN
	(SELECT p_id
	FROM evaluation)
UNION
SELECT DISTINCT p_id, project_name
FROM project
WHERE p_id IN
	(SELECT p_id
	FROM project_consultant
	WHERE mgr_id IN
		(SELECT c_id
		FROM consultant
		WHERE c_last LIKE 'Z%')
	);