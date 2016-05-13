select if( 1 = 2-1, '참', '거짓' );

select emp_no, IF( gender = 'M', '남자', '여자') AS '성별' from employees;

select IFNULL( null, '----' );
select IFNULL( 'Hello', '----' ); 


--view
CREATE VIEW view1 AS (
    SELECT a.emp_no, CONCAT(a.first_name, ' ', a.last_name) AS name, b.salary
     FROM employees a, salaries b
   WHERE a.emp_no = b.emp_no AND to_date = '9999-1-1'
ORDER BY b.salary DESC
);

select * from view1;