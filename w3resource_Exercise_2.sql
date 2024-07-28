
-- SQL Exercises, Practice, Solution - Using Boolean and Relational operators

-- 1

select * from customer where grade > 100;

-- 2

select * from customer where city = 'New York' and grade >100;

-- 3

select * from customer where city = 'New York' or grade > 100;

-- 4

select * from customer where city = 'New York' or grade <=100;

-- 5

select * from customer where not (city = 'New York' or grade >100);

-- 6

select * from orders

where not(ord_date = '2012-09-10') and (salesman_id >5005 or purch_amt > 1000);

-- 7

select * from salesman where (commission >=0.10 and commission <=0/12);

-- 8

select * from orders
where not (ord_date >= '2012-02-10' and customer_id < 3009) or purch_amt <200;

-- 9

select * from orders

where not ((ord_date = ' 2012-08-17' or customer_id > 3005) and purch_amt  <1000);

-- 10


select ord_no, purch_amt,

(100*purch_amt)/6000 as "Achieved %",

(100*(6000-purch_amt)/6000) as "Unachieved %" from orders

where (100*purch_amt)/6000 > 50;


-- 11

select * from emp_details

where Emp_Lname = 'Dosni' or Emp_Lname = 'Mardy';


-- 12

select * from emp_details

where Emp_Dept = 47 or Emp_dept = 63;
