-- 문제5



-- 문제6
  SELECT c.dept_name, ROUND( AVG( d.salary ) )
    FROM employees a,
         dept_emp b,
	     departments c,
  	     salaries d
   WHERE a.emp_no = b.emp_no
     AND b.dept_no = c.dept_no
     AND a.emp_no = d.emp_no
     AND b.to_date = '9999-1-1'
     AND d.to_date = '9999-1-1' 
GROUP BY c.dept_name
  HAVING ROUND( AVG( d.salary ) ) = ( SELECT MAX( avg_salary )
                                        FROM (  SELECT ROUND( AVG( d.salary ) ) AS avg_salary
                                                  FROM employees a,
                                                       dept_emp b,
	                                                   departments c,
  	                                                   salaries d
                                                 WHERE a.emp_no = b.emp_no
                                                   AND b.dept_no = c.dept_no
                                                   AND a.emp_no = d.emp_no
                                                   AND b.to_date = '9999-1-1'
                                                   AND d.to_date = '9999-1-1'
                                              GROUP BY b.dept_no ) k );	   


-- 문제7
  SELECT b.title, ROUND( AVG( c.salary ) )
    FROM employees a,
		 titles b,	
  	     salaries c
   WHERE a.emp_no = b.emp_no
     AND a.emp_no = c.emp_no
     AND b.to_date = '9999-1-1'
     AND c.to_date = '9999-1-1' 
GROUP BY b.title
  HAVING ROUND( AVG( c.salary ) ) = ( SELECT MAX( avg_salary )
                                        FROM (  SELECT ROUND( AVG( c.salary ) ) AS avg_salary
                                                  FROM employees a,
                                                       titles b,
  	                                                   salaries c
                                                 WHERE a.emp_no = b.emp_no
                                                   AND a.emp_no = c.emp_no
                                                   AND b.to_date = '9999-1-1'
                                                   AND c.to_date = '9999-1-1'
                                              GROUP BY b.title ) k );
											  
											  
--문제8
SELECT d.dept_name, CONCAT( first_name, ' ', last_name ) AS name, c.salary, m.name, m.salary
  FROM employees a,
       dept_emp b,
	   salaries c,
	   departments d,
	   ( SELECT b.dept_no, CONCAT( first_name, ' ', last_name ) AS name, c.salary
           FROM employees a,
                dept_manager b,
	            salaries c
          WHERE a.emp_no = b.emp_no
            AND a.emp_no = c.emp_no
            AND b.to_date = '9999-1-1'
            AND c.to_date = '9999-1-1' ) m	   
 WHERE a.emp_no = b.emp_no
   AND a.emp_no = c.emp_no
   AND b.dept_no = d.dept_no
   AND b.to_date = '9999-1-1'
   AND c.to_date = '9999-1-1'	   
   AND b.dept_no = m.dept_no
   AND c.salary > m.salary;	   
	   






											  		    