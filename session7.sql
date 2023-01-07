# session 6 ***************************** sql  join ************************
/*
inner join 
right join
left join 
full outer join 
self join
natruel join
cross join
*/
use Student;

show tables;

select * from student;
select * from departement;
#************************* for inner join************************
select * from student inner join departement on 
student.student_id = departement.student_id ;

# ******************************************right join******************
select * from student right join departement on
student.student_id = departement.student_id;

insert into student(student_id,first_name,last_name,age,bac) value(4,'karim4','akarkab4',26,'science');

select * from student;

#**************************letf join

select * from student as st left join departement as dt
on st.student_id = dt.student_id;

# *********************** full oter join *****************
select * from student right join departement on
student.student_id = departement.student_id
union
select * from student as st left join departement as dt
on st.student_id = dt.student_id;

# for cross join 

select * from student cross join departement ; 


# for naturel join 

select * from student natural join departement;

select * from student inner join departement on 
student.student_id = departement.student_id ;

#*************************** self join**************

create table customer (
id_cust int not null primary key,
customer_name varchar(40),
customer_contact varchar(40),
adress varchar(30),
zip_code varchar(30),
city varchar(40)
);
show tables;
# insert some data in side customer table

insert into customer (id_cust,customer_name,customer_contact,adress,zip_code,city)

 values(1,'LG','+212125487','rue 21','45000','ouarzazazte'),
        (2,'SONY','+2122365874','AVENU 10','45000','ouarzazazte'),
	    (3,'LENOVO','+21202326587','rue 33','45000','casa'),
	   (4,'HP','+2120215487','SALAE2','40000','rabat'),
       (5,'ASUS','+2123265987','rue 40','39000','rabat'),
       (6,'COMPAQ','+2120213587','avenu 33','83000','casa'),
       (7,'SIERA','+2122135698','ollfa 20','44000','khrigba'),
       (8,'NOTE1','+2122154875','rue12','41000','ouarzazate') ,
       (9,'TECK','+21223659874','rue 10','42000','taza') ;


select * from customer;

# for self  join 

select A.customer_name,B.customer_name,A.city from customer A,customer B
where A.id_cust <> B.id_cust
and A.city = B.city
order by A.city desc;
