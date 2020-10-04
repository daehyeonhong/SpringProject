select * from all_users;

select * from all_tables order by owner;

select * from all_tables where owner='PROJECT_J' order by table_name;



---------------------------------------------------------------------------
create table tickets(
tNo number primary key,
category varchar2(20),
title varchar2(30),
userId varchar2(30),
regDate date default sysdate,
updateDate date default sysdate,
status number,
content varchar2(3000),
uploadFile varchar2(100),
replycnt number default 0
);

create sequence seq_tickets;

alter table tickets add(replycnt number default 0);	//done

alter table inquiry add(status number default 1);

-------------------------------------------------------------------------

select * from tickets;

select * from tickets where tNo>0;

insert into tickets(tNo,category,title,userId,status,content) 
values(seq_tickets.nextval,'Long-term','I have a problem'||seq_tickets.currval,'redRoadbronze'||seq_tickets.currval,1,
'sushi omakase sashimi gobchang samgyeopsal chicken pizza beer soju tequila guinness baijiu');

insert into tickets(tNo,category,title,userId,status,content) 
values(seq_tickets.nextval,'Short-term','I have a problem'||seq_tickets.currval,'redRoadbronze'||seq_tickets.currval,1,
'ima go nutz and this wuhan chinamen virus is driving all of us crazy plz help lfg to finish covid');

insert into tickets(tNo,category,title,userId,status,content) 
select seq_tickets.nextval,category,title||seq_tickets.currval,userId||seq_tickets.currval,status,content
from tickets;

-------------------------------------------------------------------------
SELECT cols.table_name, cols.column_name, cols.position, cons.status, cons.owner
FROM all_constraints cons, all_cons_columns cols
WHERE cols.table_name = 'TICKETS'
AND cons.constraint_type = 'P'
AND cons.constraint_name = cols.constraint_name
AND cons.owner = cols.owner
ORDER BY cols.table_name, cols.position;

SELECT *
FROM user_cons_columns
WHERE table_name = 'INQUIRY';

alter table tickets rename constraint SYS_C007502 to pk_tickets;

select * from user_sequences;
-----------------------------------------------------------------------------

alter table answer add(inquiry_seq number);

create sequence seq_answer;

delete from answer;

select * from answer;

select * from inquiry;

select * from inquiry_type;