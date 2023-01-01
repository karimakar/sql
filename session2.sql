# session 2 
 /*
 1 SQL NULL VALUES
 2 UPDATE STATMENT 
 3 DELETE STATMENT 
 4 ALTER TABLE
  ** ADD COLUMN IN EXISTING TABLE 
  ** ALTER TABLE DROP COLUMN 
 */
 
 show databases;
 
 # create database 
 create database customer;
 
 show databases;
 use customer;
 desc customer;
# create our table of customer info

create table customer_info(
id int auto_increment,
first_name varchar(20),
last_name varchar(20),
gender varchar(5),
salary integer,
primary key (id)
);
show tables;
select * from customer_info;

show databases;
show tables;

# insert some data 
insert  into customer_info(first_name ,last_name,gender,salary) values

('khalid','test1','male',4000);


### null and not null

select * from customer_info where salary is null;

select * from customer_info where salary is not null;

# update statment 
update customer_info set salary = 20000 where id = 18;

select * from customer_info ;

update customer_info set salary = 30000 where id = 16;


select * from customer_info;

# delete statment 

delete from customer_info where id = 19;

select * from customer_info;

# alter statment for adding column in exsiting table
alter table customer_info add email varchar(25);

select * from customer_info;

alter table customer_info add dob date;
select * from customer_info;

desc customer_info;

alter table customer_info modify dob year;

desc customer_info;