# session 1 
/*
1 . create database
2 . drop database
3  . create table
4  . drop table 

*/

show databases;
SHOW DATABASES;

use world;
show tables;
select * from country;

# ---------------------------- create database -----------------

create database cutsomres;
show databases;
use cutsomres;
show tables;

# -------------- create table--------

create table customer_info(
id int,
first_name varchar(12),
last_name varchar(10),
gender varchar(9)
);


show tables;

select * from cutomer_info;

# ----------- insert of data---------------

insert into customer_info (id,first_name,last_name,gender)  values(1,'akarkab','karim','male');

select
 * from customer_info;
insert into customer_info (id,first_name,last_name,gender)  values(1,'test','test test','female');




# drop of database and table 

# drop database cutsomres;
drop table customer_info;
drop database cutsomres;


show databases;
