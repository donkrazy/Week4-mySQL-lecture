--1.
 SELECT b.dept_no
  FROM employees a, dept_emp b
WHERE a.emp_no = b.emp_no
    AND a.first_name = 'Fai'
	AND a.last_name = 'Bale';
	
--2
 SELECT a.emp_no
  FROM employees a, dept_emp b
WHERE a.emp_no = b.emp_no
	AND b.dept_no = 'd004';
	
--3 ( 서브쿼리 결과가 단일 ROW인 경우)	
 SELECT a.emp_no
  FROM employees a, dept_emp b
WHERE a.emp_no = b.emp_no
	AND b.dept_no = (  SELECT b.dept_no
  							    FROM employees a, dept_emp b
                              WHERE a.emp_no = b.emp_no
                                  AND a.first_name = 'Fai'
	                              AND a.last_name = 'Bale' );
								  
-- error1
 SELECT a.emp_no
  FROM employees a, dept_emp b
WHERE a.emp_no = b.emp_no
	AND b.dept_no = (  SELECT b.dept_no
  							    FROM employees a, dept_emp b
                              WHERE a.emp_no = b.emp_no
	                              AND a.last_name = 'Bale' );
								  
-- 서브 쿼리 결과가 멀티 로우 인경우 	(in, =ANY, =All							  
 SELECT a.emp_no
  FROM employees a, dept_emp b
WHERE a.emp_no = b.emp_no
	AND b.dept_no in (  SELECT b.dept_no
  							    FROM employees a, dept_emp b
                              WHERE a.emp_no = b.emp_no
	                              AND a.last_name = 'Bale' );
								  
								  
-- 문제1
 SELECT AVG(salary)
  FROM employees a, salaries b
WHERE a.emp_no = b.emp_no
    AND to_date = '9999-1-1';   

 SELECT CONCAT(a.first_name, ' ', a.last_name) as name, b.salary
  FROM employees a, salaries b
WHERE a.emp_no = b.emp_no
    AND to_date = '9999-1-1'  
    AND b.salary < ( SELECT AVG(salary)
                            FROM employees a, salaries b
                          WHERE a.emp_no = b.emp_no
                             AND to_date = '9999-1-1'); 

 select *
  from employees a, salaries b
where a.emp_no = b.emp_no
  and  b.to_date = '9999-1-1'
  and  b.salary < 50000;
       
select emp_no  from salaries where salary < 50000 and to_date = '9999-1-1';
								  	