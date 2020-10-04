select * from all_users;

select * from all_tables order by owner;

select * from all_tables where owner='PROJECT_J' order by table_name;



---------------------------------------------------------------------------

create table admins(
firstName varchar2(20),
lastName varchar2(20),
email varchar2(30) primary key,
password varchar2(20)
);

select * from admins;

delete from admins;

insert into admins(firstName,lastName,email,password) values();

--------------------------------------------------------------------------

select * from short_car;

----------------------------------------------------------------------------

SELECT cols.table_name, cols.column_name, cols.position, cons.status, cons.owner
FROM all_constraints cons, all_cons_columns cols
WHERE cols.table_name = 'BRANCH'
AND cons.constraint_type = 'P'
AND cons.constraint_name = cols.constraint_name
AND cons.owner = cols.owner
ORDER BY cols.table_name, cols.position;

SELECT *
FROM user_cons_columns
WHERE table_name = 'BRANCH';

alter table tickets rename constraint SYS_C007502 to pk_tickets;

select * from user_sequences;
-------------------------------------------------------------------------


select * from branch;