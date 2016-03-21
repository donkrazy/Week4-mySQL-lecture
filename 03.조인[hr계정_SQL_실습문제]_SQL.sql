--문제1
    SELECT a.emp_no, CONCAT(a.first_name, ' ', a.last_name) AS name, b.salary
     FROM employees a, salaries b
   WHERE a.emp_no = b.emp_no AND to_date = '9999-1-1'
ORDER BY b.salary DESC;

--문제2
     SELECT a.emp_no, CONCAT(a.first_name, ' ', a.last_name) AS name, b.title
      FROM employees a, titles b
    WHERE a.emp_no = b.emp_no AND to_date = '9999-1-1'
ORDER BY name ASC;

--문제3
     SELECT a.emp_no,
               CONCAT(a.first_name, ' ', a.last_name) AS 'name',
               c.dept_name
      FROM employees a, dept_emp b, departments c
    WHERE (a.emp_no = b.emp_no AND b.dept_no = c.dept_no)
        AND b.to_date = '9999-1-1'
ORDER BY name ASC;

--문제4
     SELECT a.emp_no,
               CONCAT(a.first_name, ' ', a.last_name) AS name,
               c.dept_name,
			   e.title,
			   d.salary
      FROM employees a, 
	           dept_emp b,
			   departments c,
			   salaries d,
			   titles e
    WHERE a.emp_no = b.emp_no
	    AND b.dept_no = c.dept_no
	    AND a.emp_no = d.emp_no
		AND a.emp_no = e.emp_no  
        AND b.to_date = '9999-1-1'
		AND d.to_date = '9999-1-1'
		AND e.to_date = '9999-1-1'
ORDER BY name ASC;

--문제5
     SELECT a.emp_no, CONCAT(a.first_name, ' ', a.last_name) AS name, b.title, b.from_date, b.to_date
      FROM employees a, titles b
    WHERE a.emp_no = b.emp_no
	    AND b.title = 'Technique Leader'
		AND to_date <> '9999-1-1'
ORDER BY name ASC;

--문제6
    SELECT a.emp_no,
               CONCAT(a.first_name, ' ', a.last_name) AS name,
               c.dept_name
      FROM employees a, 
	           dept_emp b,
			   departments c
    WHERE a.emp_no = b.emp_no
	    AND b.dept_no = c.dept_no
		AND a.last_name LIKE 'S%';

--문제7
    SELECT a.emp_no,
               CONCAT(a.first_name, ' ', a.last_name) AS name,
			   c.title,
			   b.salary
      FROM employees a, 
			   salaries b,
			   titles c
    WHERE a.emp_no = b.emp_no
		AND a.emp_no = c.emp_no  
        AND b.to_date = '9999-1-1'
		AND c.to_date = '9999-1-1'
		AND c.title = 'Engineer'
		AND b.salary > 40000;

--문제8
    SELECT a.emp_no,
               CONCAT(a.first_name, ' ', a.last_name) name,
			   c.title,
			   b.salary
      FROM employees a, 
			   salaries b,
			   titles c
    WHERE a.emp_no = b.emp_no
		AND a.emp_no = c.emp_no  
        AND b.to_date = '9999-1-1'
		AND c.to_date = '9999-1-1'
		AND b.salary > 50000
ORDER BY b.salary DESC;		

--문제9
     SELECT c.dept_no AS '부서번호',
			   AVG(d.salary) AS '부서별 평균 연봉'
      FROM employees AS a, 
	           dept_emp AS b,
			   departments AS c,
			   salaries AS d
    WHERE a.emp_no = b.emp_no
	    AND b.dept_no = c.dept_no
	    AND a.emp_no = d.emp_no
        AND b.to_date = '9999-1-1'
		AND d.to_date = '9999-1-1'
GROUP BY c.dept_no
ORDER BY '부서별 평균 연봉' DESC;

--문제10
     SELECT b.title AS '직책',
	 			AVG(salary) AS '직책별 평균 연봉'
      FROM employees AS a, 
			   titles AS b,
			   salaries AS c
    WHERE a.emp_no = b.emp_no
		AND a.emp_no = c.emp_no  
        AND b.to_date = '9999-1-1'
		AND c.to_date = '9999-1-1'
GROUP BY b.title		
ORDER BY '부서별 평균 연봉' DESC; 
 

