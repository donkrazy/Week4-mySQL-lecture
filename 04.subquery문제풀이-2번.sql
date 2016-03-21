--문제2번 풀이

     select  b.dept_no, max(c.salary) as max_salary
       from employees a, dept_emp b, salaries c
     where a.emp_no = b.emp_no
        and a.emp_no = c.emp_no
        and b.to_date = '9999-1-1'
        and c.to_date = '9999-1-1' 
group by b.dept_no;

      select *
       from employees a, dept_emp b, salaries c
     where a.emp_no = b.emp_no
        and a.emp_no = c.emp_no
        and b.to_date = '9999-1-1'
        and c.to_date = '9999-1-1' 
        and ( b.dept_no, c.salary ) in (      select  b.dept_no, max(c.salary) 
                                                       from employees a, dept_emp b, salaries c
                                                     where a.emp_no = b.emp_no
                                                        and a.emp_no = c.emp_no
                                                        and b.to_date = '9999-1-1'
                                                        and c.to_date = '9999-1-1' 
                                                 group by b.dept_no);
												     
		
      select a.emp_no, b.dept_no, d.max_salary 
       from employees a, 
	          dept_emp b,
			  (select  b.dept_no, max(c.salary) as max_salary
                 from employees a, dept_emp b, salaries c
               where a.emp_no = b.emp_no
                  and a.emp_no = c.emp_no
                  and b.to_date = '9999-1-1'
                  and c.to_date = '9999-1-1' 
           group by b.dept_no) d
     where a.emp_no = b.emp_no
		and b.dept_no = d.dept_no
        and b.to_date = '9999-1-1'; 
				
		
		
		
		  