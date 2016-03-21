-- 문자형 함수

SELECT UPPER('Seoul'), UCASE('seoul');

SELECT LOWER('Seoul'), LCASE('SEOUL');

--SELECT * FROM USER WHERE LOWER(id) = LOWER('Seoul');

SELECT SUBSTRING('Happy Day', 3, 3);

SELECT CONCAT(first_name, '  ', last_name) AS name, hire_date
  FROM employees
 WHERE '1989-1-1' <= hire_date AND hire_date <= '1989-12-31';