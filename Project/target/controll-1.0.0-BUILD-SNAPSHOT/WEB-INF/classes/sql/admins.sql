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