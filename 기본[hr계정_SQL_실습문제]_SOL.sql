-- 문제1
  SELECT CONCAT( first_name, ' ', last_name) AS '이름'
   FROM employees
  WHERE emp_no = 10944;
   
-- 문제2
     SELECT CONCAT( first_name, ' ', last_name) AS '이름', gender AS '성별', hire_date AS '입사일'
      FROM employees
ORDER BY hire_date ASC;

-- 문제3
  SELECT COUNT(*)
   FROM employees
 WHERE gender = 'm';

  SELECT COUNT(*)
   FROM employees
 WHERE gender = 'f';

--문제4
  SELECT COUNT(*)
   FROM salaries
 WHERE to_date = '9999-1-1';
 
--문제5
  SELECT count(*)
   FROM departments;

--문제6
   SELECT count(*)
    FROM dept_manager
  WHERE to_date = '9999-1-1';
   
--문제7
     SELECT dept_name
      FROM departments
ORDER BY LENGTH(dept_name) DESC;

--문제8
 SELECT count(*)
  FROM salaries
WHERE to_date = '9999-1-1'
   AND salary > 120000;    

--문제10
 SELECT count(*)
  FROM title
WHERE to_date = '9999-1-1'
    AND   


	   