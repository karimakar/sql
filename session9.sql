# session 9***************************FUNCTIONS******************************

use world;

select * from country;
select LifeExpectancy from country;

select * from country;

select Code,Continent,Capital ,LifeExpectancy , lifeExpectancy(LifeExpectancy) as level_of_life from country;
# ****************************************************our function*********************************************

CREATE DEFINER=`root`@`localhost` FUNCTION `lifeExpectancy`(LifeExpectancy int) RETURNS varchar(40) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
declare life varchar(40);
if LifeExpectancy >80 then 
set life = 'good level';
elseif (LifeExpectancy<=80 and LifeExpectancy>=40) then
set life = 'medium level';
elseif LifeExpectancy<40 then 
set life = 'bad level';
end if;
  return (life);
END



select Code,Continent,Capital ,LifeExpectancy , lifeExpectancy(LifeExpectancy) as level_of_life from country;

