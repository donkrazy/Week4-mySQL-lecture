--날짜 함수

--날짜

SELECT CURDATE(), CURRENT_DATE;

--시간

SELECT CURTIME(), CURRENT_TIME;

--날짜+시간

SELECT NOW(), SYSDATE(), CURRENT_TIMESTAMP;

SELECT *
  FROM salaries
 WHERE to_date = NOW();

SELECT *
  FROM salaries
 WHERE to_date = SYSDATE();

--formatting

SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i');

SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %p %h:%i:%s');

SELECT emp_no, DATE_FORMAT(hire_date, '%Y년 %m월 %d일')
  FROM employees
 WHERE hire_date > '2000-1-1';

SELECT CONCAT(first_name, ' ', last_name) AS name,
       hire_date,
       PERIOD_DIFF(DATE_FORMAT(CURDATE(), '%y%m'),
                   DATE_FORMAT(hire_date, '%y%m'))
  FROM employees;

SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH), ADDDATE(NOW(), INTERVAL 1 MONTH);

SELECT DATE_ADD(NOW(), INTERVAL 10 DAY), ADDDATE(NOW(), INTERVAL 10 DAY);

SELECT DATE_ADD(NOW(), INTERVAL 10 YEAR), ADDDATE(NOW(), INTERVAL 10 YEAR);

SELECT CONCAT(first_name, ' ', last_name) AS name,
       DATE_FORMAT(hire_date, '%Y-%m-%d'),
       DATE_FORMAT(ADDDATE(hire_date, INTERVAL 10 YEAR), '%Y-%m-%d')
          AS VACATION_DATE
  FROM employees;

--cast

SELECT CAST(NOW() AS DATE);

SELECT CAST(1 - 2 AS UNSIGNED);

SELECT CAST(CAST(1 - 2 AS UNSIGNED) AS SIGNED);