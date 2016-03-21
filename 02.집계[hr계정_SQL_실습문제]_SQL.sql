SELECT AVG(salary), SUM(salary)
  FROM salaries
 WHERE emp_no = 10060;

SELECT emp_no,
       salary,
       from_date,
       to_date
  FROM salaries
 WHERE emp_no = 10060;


SELECT from_date, MAX(salary), MIN(salary)
  FROM salaries
 WHERE emp_no = 10060;

  SELECT emp_no, AVG(salary)
    FROM salaries
GROUP BY emp_no
  HAVING AVG(salary) < 50000;

  SELECT *
    FROM titles
ORDER BY emp_no;

  SELECT emp_no, count(*)
    FROM titles
GROUP BY emp_no
  HAVING count(*) > 2;

--예제5

SELECT * FROM salaries order by emp_no;

select
emp_no as 사번,
max(salary) as 최고연봉,
min(salary) as 최저연봉,
max(salary) - min(salary) as 연봉차이
from salaries
group by emp_no;

--문제3