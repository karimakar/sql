#         session 11
use company;

select * from emplyee;
select * from bonus;
select * from designation;

## wirite sql query ot return all details when first_name start with k or s

select * from emplyee where first_name like 'k%' or 's%';


## wirite sql query to return all employee where salary between 8000 and 10000

select * from emplyee where salary between 8000 and 10000;

select * from emplyee where salary in (8000,10000);

## wirite sql query to retrive details of employee joining on x date

select * from emplyee where year(joinging)=2019 and month(joinging)=01;

## wirite sql query to fetch number of emplyee in every department 
select count(*),department_name,joinging from emplyee group by department_name;

## wirite sql query tp print details of the employee we are also executive
select  * from emplyee as emp inner join designation as des
on emp.emp_id = des.emp_des_id 
and designtaion_name=lower('executive');

##wirite sql query to clone a new table from an outher table 

create table employee(select * from emplyee);

select * from employee;

## wirite sql query to show top n salary of employee
select * from emplyee order by salary limit 2 ;
## wirite sql query to determine the 3th higest salary 
select * from emplyee order by salary desc limit 3;




