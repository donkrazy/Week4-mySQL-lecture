desc guestbook;

--insert (add.jsp)
  INSERT INTO guestbook
         VALUES( null, '고길동', now(), '안녕', password('4321') );
		 
--select (index.jsp)
    SELECT no, name, DATE_FORMAT( reg_date, '%Y-%m-%d %h:%i:%s' ), message 
     FROM guestbook
ORDER BY reg_date desc; 

--delete (delete.jsp)
delete from guestbook where no = 1 AND passwd=password('1234');

--select
select * from guestbook; 		  
