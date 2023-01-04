# session 3 ======> constraints part1

/*
1.Not Null
2.Unique
3.Primary key
4.Foreign key
5.Check
5. Default
7.Index
*/      

create database if not exists peaple;

show databases;
use peaple;

# create table 

create table student (
id int not null,
nom varchar(20),
prenom varchar(20),
age int 
);

show tables;
drop table teacher;
drop table student;

# add not null contsraint

desc student;

# create auther table for add unique constraint 
create table teacher (
id int not null,
first_name varchar(20),
last_name varchar(20),
age int ,
unique(id)
);

desc teacher;

alter table teacher modify age int not null;

# insert some data
insert into teacher (id , first_name,last_name,age )
 values (1,'karim','akae','23');
 insert into teacher (id , first_name,last_name,age )
 values (2,'karim1','akae1','22');
 
 # if i try to use the same id
 
  insert into teacher (id , first_name,last_name,age )
 values (1,'karim3','akae4','20');
 
 select * from teacher;

desc teacher;

# if we want to add unique contraint 
alter table teacher add unique(age);

desc teacher;


# create auther table for duplicat unique 

create table admin(
id int not null,
cne int ,
age int,
nom varchar(20),
prenom varchar(20)
);

show tables;

desc admin;

alter table admin add constraint uk_admin unique(id,cne);

desc admin;

alter table admin  drop index uk_admin;

desc admin;

# create table emp

create table emp (
id int ,
first_name varchar(15),
last_name varchar(20),
cne int ,
age int,
constraint  primary key(cne)



);

desc emp;

alter table emp drop primary key;

desc emp;
#-----------------------------------------part2------------------------------------
create database person ;
show databases;

# create table for primary key
use person;
create table patient(id int ,
first_name varchar(20),
last_name varchar(20),
cne int);

desc patient;
alter table patient add constraint pk primary key(cne,id);
#*************************foregin key

create table parent(id int primary key);
create table child(id int primary key ,
parent_id int , foreign key (parent_id) references parent(id) );
 
 show tables;

#*****************ckek***************

create table vheicle(
vhecile_no varchar(30) primary key,
model_name varchar(30),
cost_price decimal(10,2),
sell_price decimal(10,2),
constraint c_s check(sell_price>cost_price)
);

insert into  vheicle(vhecile_no,model_name,cost_price,sell_price) values('s0001',"4*4",700000,600000);
insert into  vheicle(vhecile_no,model_name,cost_price,sell_price) values('s0002',"sandiro",700000,900000);
insert into  vheicle(vhecile_no,model_name,cost_price,sell_price) values('s0003',"r4",70000,80000);

# drop check constraint
alter table vheicle 
drop  check c_s;


select * from vheicle;


# defulat constraint 

create table emp( id int primary key,
first_name varchar(20), last_name varchar(20), city varchar(19) default 'ouarzazate');


insert into  emp(id,first_name,last_name) values(2,"ahmed","depak");

insert into  emp(id,first_name,last_name,city) values(3,"ahmed","depak","casa");



select  * from emp;

alter table emp
alter city drop default;
desc emp;
