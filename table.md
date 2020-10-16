---------- 단기예약 ---------- 



create table short_term(

  seq number(10,0),

  id varchar2(20) not null,

  start_date date not null,

  end_date  date not null,

  branch number(38) not null,

  car  varchar2(20) not null,

  total_amount number(38) not null,

  save number(38) not null,

  coupon number(38) not null,

  payment_amount number(38) not null,

  insurance varchar2(20) not null

  );

  

 ---------- 보험 ---------- 

 

  create table insurance(

  seq number(10,0),

  name varchar2(20) not null,

  fare number(38) not null,

  levy number(38) not null

  );

  

---------- 지점 ---------- 



  create table branch(

  seq number(10,0),

  name varchar2(20) not null,

  phone  varchar2(20) not null,

  address varchar2(20) not null,

  repair varchar2(20) not null,

  electric_car  varchar2(20) not null,

  type  number(38) not null

  );

  