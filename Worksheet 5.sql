desc emaillist;

-- emaillist getList
SELECT no, first_name, last_name, email FROM emaillist; 

-- emailist insert
INSERT INTO emaillist
       VALUES (null, '홍', '길동', 'gildong@gmail.com' );

commit;