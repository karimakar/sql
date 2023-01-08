#----------------------------session 7 procudres

use world;

show tables;

#select  * from country where IndepYear =1956;
 # create procedure 
 CREATE DEFINER=`root`@`localhost` PROCEDURE `independent_year`(inout indep int,in IndepYear smallint)
BEGIN
select count(*) into indep from country where country.IndepYear = IndepYear;
END
 # lets call our procuders
 
call independent_year(@indep,1956);
select @indep as Total_Countrys;

select  * from country where IndepYear =1956;


 
 
