-- 문자형 함수

SELECT UPPER( 'Seoul'), UCASE( 'seoul' );

SELECT LOWER( 'Seoul'), LCASE( 'SEOUL' );

--SELECT * FROM USER WHERE LOWER(id) = LOWER('Seoul');

SELECT SUBSTRING( 'Happy Day', 3, 3 );

 SELECT CONCAT( first_name, '  ', last_name ) AS name, hire_date
  FROM employees
WHERE '1989-1-1' <= hire_date AND hire_date <= '1989-12-31'; 

 SELECT CONCAT( first_name, '  ', last_name ) AS name, hire_date
  FROM employees
WHERE hire_date BETWEEN '1989-1-1' AND '1989-12-31'; 

 SELECT CONCAT( first_name, '  ', last_name ) AS name, hire_date
  FROM employees
WHERE hire_date LIKE '1989%'; 
 
 SELECT CONCAT( first_name, '  ', last_name ) AS name, hire_date
  FROM employees
WHERE SUBSTRING(hire_date, 1, 4) = '1989'; 

SELECT LPAD('hi', 5, '*'), RPAD('hi', 5, '*');

SELECT emp_no, LPAD( CAST( salary AS CHAR ), 10, '*')
 FROM salaries
WHERE salary <= 700000;

SELECT CONCAT( '--',  LTRIM( '   hello   ' ), '--' ) AS 'LTRIM',
		  CONCAT( '--',  RTRIM( '   hello   ' ), '--' ) AS 'RTRIM',
		  CONCAT( '--',    TRIM( '   hello   ' ), '--' ) AS 'TRIM',
		  CONCAT( '--',    TRIM( LEADING   'x'    FROM   'xxxhelloxxx' ), '--' ) AS 'LEADING',
		  CONCAT( '--',    TRIM( TRAILING   'x'    FROM   'xxxhelloxxx' ), '--' ) AS 'TRAILING',
		  CONCAT( '--',    TRIM( BOTH   'x'    FROM   'xxxhelloxxx' ), '--' ) AS 'BOTH';
		  
SELECT REPLACE( 'Hello\n', '\n', '<br>');		  
		  











 


 