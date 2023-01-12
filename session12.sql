# session 12  ------>      "" triggers 
use company;
select * from emplyee;
# fisrt step
create table emp_controle (
id int auto_increment primary key,
emp_id int not null,
first_name varchar(30) default null,
salary int default null,
action varchar(30) default null
);
alter table emp_controle 
add column changedate datetime;
 # check of schema
 show tables;
 desc emp_controle;
 
 # create our trigger
 create trigger befor_emply_update
 before update on emplyee
 for each row
 insert into emp_controle
 set action ='update',
 emp_id=old.emp_id,
 first_name=old.first_name,
 salary=old.salary,
 changedate=now();
 
 # invoke our trigger
 update  emplyee
 set first_name = 'krimoo'
 where emp_id=1;
 
 select * from emp_controle;
 
 # create outher table for after updating 
 
 create table after_update_empl (
id int auto_increment primary key,
emp_id int not null,
last_name varchar(30) default null,
salary int default null,
action varchar(30) default null
);
alter table after_update_empl
add column first_name varchar(30);
# drop last_name column 
alter table after_update_empl
drop column last_name ;
show tables;

alter table after_update_empl
add column changedate datetime;
 
 create trigger after_emply_update
 before update on emplyee
 for each row
 insert into after_update_empl
 set action ='update',
 emp_id=new.emp_id,
 first_name=new.first_name,
 salary=new.salary,
 changedate=now();
 
 update emplyee
 set  first_name = 'akarkab'
 where emp_id=1;
select * from after_update_empl;

update emplyee
 set  salary = 10000
 where emp_id=1;

select * from after_update_empl;

# truncetre function

select * from emplyee;

create table test(select * from emplyee);

select * from test;

truncate test;

select * from test;


