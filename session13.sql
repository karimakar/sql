use company;
select * from emplyee;

# create trigger on with delete statment
create trigger befor_delete_emplyee
before delete on emplyee
for each row 
insert into emp_controle
set action ='delete',
emp_id = old.emp_id,
salary = old.salary,
first_name = old.first_name,
changedate=now();

# delete some record
delete from emplyee
where emp_id = 1;
select * from emp_controle;
select * from emplyee;



# trigger after delete
create trigger after_delete_emplyee
after delete on emplyee
for each row 
insert into emp_controle
set action ='delete',
emp_id = old.emp_id,
salary = old.salary,
first_name = old.first_name,
changedate=now();

delete from emplyee
where emp_id = 2;
select * from emplyee;
select * from emp_controle;


# insert trigger 
create trigger befor_insert_emplyee
before insert on emplyee
for each row 
insert into emp_controle
set action ='insert',
emp_id = new.emp_id,
salary = new.salary,
first_name = new.first_name,
changedate=now();

insert into emplyee(emp_id,first_name,last_name,salary,joinging,department_name)
value(1,'jaki','bruce',8000,'2023-12-01 00:00:00','data science');

select * from emplyee;

select * from emp_controle;

# after insert 

create trigger after_insert_emplyee
after insert on emplyee
for each row 
insert into emp_controle
set action ='insert',
emp_id = new.emp_id,
salary = new.salary,
first_name = new.first_name,
changedate=now();

insert into emplyee(emp_id,first_name,last_name,salary,joinging,department_name)
value(2,'bruce','lee',10000,'2023-12-01 00:00:00','it');

select * from emplyee;

select * from emp_controle;
