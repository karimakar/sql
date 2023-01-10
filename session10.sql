# session 10
# create our database 
create database company;
use company;

# create our principale table 

create table emplyee (
emp_id int not null primary key,
first_name varchar(25),
last_name varchar(25),
salary decimal(13,2),
joinging  datetime,
department_name varchar(20)
);

# insert some data into emplyee table 

insert into emplyee values
(1,'karim','timan',6000,'14-12-11 10.00.00','data analysis'),
(2,'joo','sankit',8000,'14-12-11 10.00.00','data analysis'),
(3,'el hassen','hero',10000,'15-12-12 10.00.00','hr'),
(4,'mahdi','daruis',10000,'15-01-11 10.00.00','hr'),
(5,'satish','jadi',5000,'19-01-21 10.00.00','acount'),
(6,'bargim','habachi',7000,'19-01-15 10.00.00','acount');

select * from emplyee;


# check schema
desc emloyee;

# create table bonus
create table bonus (  
emp_bon_id int,
bonus_amount decimal,
bonus_date datetime,
foreign key(emp_bon_id) references emplyee(emp_id)
on delete cascade 
);

## insert into bonus insert into bonus (emp_bon_id,bonus_amount,bonus_date) 
insert into bonus
values 
(1,800,'16-03-14'),
(2,900,'16-03-13'),
(3,600,'17-03-15'),
(3,900,'18-03-17'),
(4,900,'16-03-19'),
(5,700,'16-03-20'),
(1,700,'20-03-20'),
(1,700,'20-03-20');

select * from bonus;

# create table designation

create table designation (emp_des_id int,
designtaion_name varchar(30),
designation_date datetime,
foreign key(emp_des_id) references emplyee(emp_id)
on delete cascade 
);

insert into designation values
(1,'Manager','16-02-05 00.00.00'),
(2,'Executive','16-06-11 00.00.00'),
(5,'Manager','16-06-11 00.00.00'),
(4,'Ass.Manager','16-06-11 00.00.00'),
(6,'Lead','16-06-11 00.00.00'),
(3,'Lead','16-06-11 00.00.00');

select * from designation ;

select * from emplyee;

create table employee(select * from emplyee);
select * from employee;



