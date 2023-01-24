select * from sales;
select SPID,SaleDate,Amount from sales;
# order of column we have
select SaleDate,Amount,SPID from sales;
# calclute agg 
select SPID,Amount,Boxes, round(Amount/Boxes,2) as 'amount per Boxes' from sales;
# how i can include conditions
select * from sales
where amount >20000;
# count number of amount sales where amount >20000
select count(*)from sales
where amount >20000;
# order by clause
select * from sales
where amount>10000
order by amount asc;
#  odder by 2 colmuns.
select * from sales
where GeoID='G1'
order by amount desc,pid desc;
# select by two conditions
select * from sales
where amount >10000 and year(SaleDate)=2022;

select * from sales
where amount >10000 and year(SaleDate)=2022 and month(SaleDate)=1;

select * from sales
where amount >10000 and
 year(SaleDate)=2022 and
 month(saleDate)=1 and
 day(SaleDate)=3;
 
 select sum(Boxes) from sales
where amount >10000 and
 year(SaleDate)=2022 and
 month(saleDate)=1 and
 day(SaleDate)=3;
 
 # between clause
 
select * from sales
where Boxes<=50 and Boxes>0;

select * from sales where Boxes between 0 and 50;

# weekday
select SaleDate,amount,boxes from sales where weekday(saleDate)=4;

select SaleDate,amount,boxes, weekday(saleDate) as 'saleWeek' 
from sales where weekday(saleDate)=1;
 
 