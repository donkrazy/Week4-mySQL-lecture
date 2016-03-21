SELECT DATE_FORMAT(min(hire_date), '%Y-%m-%d') FROM employees;


SELECT employees.emp_no,
       CONCAT(last_name, ' ', first_name) AS '이름',
       titles.title
  FROM employees, titles
 WHERE employees.emp_no = titles.emp_no AND titles.to_date = '9999-1-1';


SELECT e.emp_no, CONCAT(e.last_name, ' ', e.first_name) AS '이름', t.title
  FROM employees e, titles t
 WHERE e.emp_no = t.emp_no AND t.to_date = '9999-1-1';

-- equi join

SELECT e.emp_no, CONCAT(e.last_name, ' ', e.first_name) AS '이름', t.title
  FROM employees e, titles t
 WHERE     e.emp_no = t.emp_no
       AND t.to_date = '9999-1-1'
       AND e.gender = 'f'
       AND t.title = 'Engineer';

-- natural join

SELECT e.emp_no, CONCAT(e.last_name, ' ', e.first_name) AS '이름', t.title
  FROM employees e NATURAL JOIN titles t
 WHERE t.to_date = '9999-1-1' AND e.gender = 'f' AND t.title = 'Engineer';


-- join ~ using

SELECT e.emp_no, CONCAT(e.last_name, ' ', e.first_name) AS '이름', t.title
  FROM employees e JOIN titles t USING (emp_no)
 WHERE t.to_date = '9999-1-1' AND e.gender = 'f' AND t.title = 'Engineer';

-- join ~ on

SELECT e.emp_no, CONCAT(e.last_name, ' ', e.first_name) AS '이름', t.title
  FROM employees e 
   JOIN titles t ON e.emp_no = t.emp_no
 WHERE t.to_date = '9999-1-1' AND e.gender = 'f' AND t.title = 'Engineer';


--실습문제1

SELECT a.emp_no,
       CONCAT(a.first_name, ' ', a.last_name) AS 'name',
       c.dept_name
  FROM employees a, dept_emp b, departments c
 WHERE     (a.emp_no = b.emp_no AND b.dept_no = c.dept_no)
       AND b.to_date = '9999-1-1';

--실습문제2

    SELECT a.emp_no, CONCAT(first_name, ' ', last_name) AS name, b.salary
     FROM employees a, salaries b
   WHERE a.emp_no = b.emp_no AND to_date = '9999-1-1'
ORDER BY b.salary DESC;



