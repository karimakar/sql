# ****
select  *from people;
# select two team
select * from people
where Team='Delish' or team='jucies';

select * from people
where team in('Delish','jucies');

# like clause
# for exp in first place
select * from people
where Salesperson like 'b%';

# select salesporson their name end with b
select * from people
where Salesperson like '%g';

# chek the pattern in the middle of word
select * from people
where Salesperson like '%o%';
# case clause
select saleDate,amount ,
case when amount < 1000 then 'under 1k'
	when amount< 5000 then 'under 5k'
    when amount <10000 then 'under 10k'
    else '10k or more'
    end as 'amount catgorey'
    from sales;
    
    # join 
    select * from sales;
    select * from people;
    
    select s.saledate,s.amount,p.salesperson,s.spid,p.spid
    from sales s join people p on p.SPID = s.SPID;

select * from products;

select s.saledate,s.amount,s.boxes,pr.product,pr.Category,pr.pid,s.pid
from sales s join products pr on pr.pid=s.PID;

# join both tables
select s.saledate,s.amount,p.salesperson,s.spid,p.spid,pr.Size
from sales s 
join people p on p.SPID=s.SPID
join products pr on pr.PID=s.PID;

# join both tables with condition

select s.saledate,s.amount,p.salesperson,s.spid,p.spid,pr.Size
from sales s 
join people p on p.SPID=s.SPID
join products pr on pr.PID=s.PID
where s.amount<5000;

select s.saledate,s.amount,p.salesperson,s.spid,p.spid,pr.Size,p.team
from sales s 
join people p on p.SPID=s.SPID
join products pr on pr.PID=s.PID
where s.amount<5000 and p.Team='Delish';

select s.saledate,s.amount,p.salesperson,s.spid,p.spid,pr.Size,p.team
from sales s 
join people p on p.SPID=s.SPID
join products pr on pr.PID=s.PID
where s.amount<5000 and p.Team ='';

select * from geo;
select * from sales;
# join  with tree tables
select s.saledate,s.amount,p.salesperson,s.spid,p.spid,pr.Size,p.team,g.Region
from sales s 
join people p on p.SPID=s.SPID
join products pr on pr.PID=s.PID
join geo g on g.GeoID = s.GeoID
where s.amount <5000 and p.team = 'jucies'
and g.Region in ('apac','Europe')
order by SaleDate asc;

# agargate function 

select min(amount) 'min amount',max(amount),avg(amount),sum(amount) from sales;

select g.geoid,sum(amount),min(amount),sum(boxes),avg(amount),g.geo from sales s
join geo g on g.GeoID=s.GeoID
group by g.GeoID
order by g.GeoID;

# exclude the null team
select pr.category,p.team,sum(boxes),sum(amount)
from sales s
join people p on p.SPID=s.SPID
join products pr on pr.PID=s.PID
where p.Team <>''
group by pr.Category,p.team
order by p.team asc,pr.Category desc;