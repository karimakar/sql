#  session 5 Index


use person ;

# create table for index 

create table enfant( id int ,
first_name varchar(20) not null,
last_name varchar(20) not null,
 age int not null);
# check table 
desc enfant;
alter table enfant add constraint pk primary key(id);
show create table enfant;
desc enfant;
# create index on table enfant
create index id_index on enfant(id);
desc enfant;
