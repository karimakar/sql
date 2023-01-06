#  session 5 view
create database Student;
use Student;

# create student table
create table student(
student_id int not null primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
age int not null,
bac varchar(15)

);

# insret some values in student table

insert into student(student_id,first_name,last_name,age ,bac) values (1,'karim1','akarkab1',29,'science'),    
																	 (2,'karim2','akarkab2',26,'letter'),
                                                                     (3,'karim3','akarkab3',22,'art');



# create departement table

create table departement (
depart_id int not null primary key,
student_id int,
depart_name varchar(12),
foreign key (student_id) references student(student_id)
);
# insert some values in department table

insert into departement (depart_id,student_id,depart_name) values(1,1,'AI'),
                                                                 (2,2,'Finance'),
                                                                  (3,3,'HR');

select * from student;
select * from departement;

create view student_info as 
select * from student inner join departement using(student_id);

drop view student_info;


show tables;