select * from sales;

select SaleDate, Amount from Sales;

select SaleDate, Amount, Boxes, Amount/Boxes from Sales;

select SaleDate, Amount, Boxes, Amount/Boxes 'Amount per Box' from Sales;

select * from sales where Amount > 20000 ;

select * from sales where Amount > 20000 order by Amount desc;  

select * from sales where Amount > 20000 order by Amount asc; 

select * from sales
where GeoID ='g1'
order by PID, Amount desc;

select * from sales
where amount >20000 and SaleDate >= '2022-01-01';

select SaleDate, Amount from sales
where amount >10000 and year(SaleDate) = 2022
order by amount desc;

select * from sales
where boxes >0 and boxes <=50;

select * from sales
where boxes between 0 and 50 ;

-- To get the particular weekday sales

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week'
from sales
where weekday(SaleDate) = 4;


-- Multiple Tables

select * from people;

select * from people
where team = 'Delish' or team = 'Jucies';

-- Using 'in' clause

select * from people
where team in ('Delish', 'Jucies');

-- Pattern Matching

select * from people
where salesperson like 'B%';

select * from people
where salesperson like '%B%';

-- Case Operator
-- Categorising data using 'case' operator

select * from sales;

select SaleDate, Amount,
		case	when amount <1000 then 'Under 1k'
				when amount <5000 then 'Under 5k'
                when amount <10000 then 'Under 10k'
			else '10k or more'
		end as 'Amount category'
from sales;


-- Joins Queries

select * from sales;

select * from people;

select s.saleDate, s.amount, p.Salesperson, s.SPID, p.spid from sales as s
join people as p on p.spid = s.SPID;

-- Left Join

select * from sales;

select * from products;

select s.saleDate, s.Amount, pr.product from sales as s
left join products as pr on pr.pid = s.pid;

-- Muliple Joins


select s.saleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales as s
join people as p on p.spid = s.SPID
join products as pr on pr.pid = s.pid;


select s.saleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales as s
join people as p on p.spid = s.SPID
join products as pr on pr.pid = s.pid
where s.amount <500
order by s.amount desc;

select s.saleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales as s
join people as p on p.spid = s.SPID
join products as pr on pr.pid = s.pid
where s.amount <500 and p.team = 'Delish';


select s.saleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales as s
join people as p on p.spid = s.SPID
join products as pr on pr.pid = s.pid
where s.amount <500 and p.team = '';

-- Geography

select * from geo;

select s.saleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales as s
join people as p on p.spid = s.SPID
join products as pr on pr.pid = s.pid
join geo as g on g.geoid = s.geoid
where s.amount <500 and p.team = ''
and g.Geo in ('USA', 'UK');

select s.saleDate, s.amount, p.Salesperson, pr.Product, p.team
from sales as s
join people as p on p.spid = s.SPID
join products as pr on pr.pid = s.pid
join geo as g on g.geoid = s.geoid
where s.amount <500 and p.team = ''
and g.Geo in ('USA', 'UK')
order by saleDate;


-- Use GROUP BY

select geoID, sum(amount)
from sales
group by geoID;

select geoID, sum(amount), avg(amount)
from sales
group by geoID;

select geoID, sum(amount), avg(amount), sum(Boxes)
from sales
group by geoID;

select g.geo, sum(amount), avg(amount), sum(Boxes)
from sales as s
join geo as g on s.GeoID = g.geoID
group by g.geo;


select pr.category, p.team, sum(boxes), sum(amount)
from sales as s
join people as p on p.spid = s.spid
join products as pr on pr.pid = s.pid
group by pr.Category, p.team
order by pr.category, p.team;

select pr.category, p.team, sum(boxes), sum(amount)
from sales as s
join people as p on p.spid = s.spid
join products as pr on pr.pid = s.pid
where p.team <>''
group by pr.Category, p.team
order by pr.category, p.team;


-- Show TOP 10 condition or 'LIMIT' operation

select pr.product, sum(amount) as 'Total Amount'
from sales as s
join products as pr on pr.pid = s.pid
group by pr.product
order by 'Total Amount';


select pr.product, sum(amount) as 'Total Amount'
from sales as s
join products as pr on pr.pid = s.pid
group by pr.product
order by 'Total Amount'
limit 10;

-- INSERTING THE DATA INTO A TABLE / DATABASE

select * from people;

insert into people (Salesperson, SPID, Team, Location) values ('David valley', 'SP34', 'Yummies', 'London');

-- UNION COMMAND 
-- IT combines the result set of two or more SELECT statements (only distinct values)

select * from geo;

select Location from people 
union 
select Geo from geo 
order by Location;

-- UNION ALL
-- combines the result set of two or more SELECT statements (allows duplicate values)

select Location from people 
union all
select Geo from geo 
order by Location;


-- Create Backup of a Table
-- We can create a backup of a table by creating a duplicate or copy of original database.

create table Key_backup as select * from products;

select * from key_backup;

--  SQL Server uses SELECT TOP or limit for getting top 3 contents from the table

select * from products
limit 3;

select * from people
limit 3;

-- Aggregate Functions [ Count(),  Sum(),  AVG(),  Min(),  Max()  ]

select * from sales;

select sum(Amount) as Total_amount from Sales;

select count(SPID) from Sales;

select Avg(Amount) from Sales;

select min(Amount) from Sales;
