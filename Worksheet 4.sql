 select a.no, a.title, b.name
  from book a, category b
where a.category_no = b.no;  

desc book;

select * from category;
