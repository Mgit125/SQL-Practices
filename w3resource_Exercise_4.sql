
--SQL Aggregate Functions

-- Count(), Sum(), Avg(), Min(), Max(), Approx_count_Distinct()

-- Checksum_agg(), String_agg(), Stdev(), Var()

-- These functions are often used with the GROUP BY clause to perform calculations on groups of data.

-- 1
select Sum(purch_amt) as Total_Purchase_amount from orders;

-- 2

select Avg(purch_amt) as Average_amount from orders;

-- 3

select COUNT(DISTINCT salesman_id) from orders;

-- 4

select count(distinct customer_id) from customer;

-- 5

select count(customer_id) from customer where grade > 1;

-- alternatively

select count(all grade) from customer;


-- 6


select max(purch_amt) as max_purch_amt from orders;

-- 7

select min(purch_amt) as minimum_amt from orders;

-- 8

select city, max(grade) as max_grade from customer group by city;

-- 9

select customer_id, max(purch_amt) as max_purch_amt from orders group by customer_id;

-- 10

select customer_id, ord_date, max(purch_amt) from orders group by customer_id, ord_date;


-- 11

select salesman_id, max(purch_amt) from orders where ord_date = '2012-08-17' group by salesman_id;



-- 12

select customer_id, ord_date, max(purch_amt) as max_amt

from orders

group by customer_id, ord_date having max(purch_amt) >2000;



-- 13


select customer_id, ord_date, max(purch_amt)

from orders

group by customer_id, ord_date having max(purch_amt) between 2000 and 6000; 



-- 14

select customer_id, ord_date, max(purch_amt)

from orders

group by customer_id, ord_date 

having max(purch_amt) in (2000, 3000, 5760, 6000); 



-- 15


select customer_id, max(purch_amt)

from orders

where customer_id between 3002 and 3007

group by customer_id;


-- 16

select customer_id, max(purch_amt)

from orders

where customer_id between 3002 and 3007

group by customer_id

having max(purch_amt) > 1000;



-- 17

select salesman_id, max(purch_amt)

from orders

group by salesman_id

having salesman_id between 5003 and 5008;


-- 18


select count(ord_no) from orders where ord_date = '2012-08-17';


-- 19

select count(salesman_id) from salesman where city is not null;


-- 20

select ord_date, salesman_id, count(ord_no)

from orders

group by ord_date, salesman_id;


-- 21

select avg(pro_price) as average_price from item_mast;


-- 22

select count(pro_id) as no_of_products from item_mast

where pro_price >= 350;


-- 23


select avg(pro_price) as average_price, pro_com as Company_id  

from item_mast group by Company_id;


-- 24

select Sum(Dpt_Allotment) as sum_alot from emp_department;


-- 25

select emp_dept, count(emp_idno) as employees from emp_details group by emp_dept;