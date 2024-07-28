
--  SQL Exercises, Practice, Solutions 

-- Wildcard and Special operators


-- 1

select * from salesman
where city = 'Paris' or city = 'Rome';


-- 2

select * from salesman
where city = 'Paris' or city = 'Rome';

-- 3

select * from salesman
where city not in('Paris', 'Rome');

-- 4

select * from customer
where customer_id in (3007, 3008, 3009);

-- 5

select * from salesman

where commission between 0.12 and 0.14;


-- 6

select * from orders 

where purch_amt( between 500 and 4000 ) and not purch_amt in (948.50, 1983.43);


-- 7


select * from salesman 

where name between 'A' and 'L';


-- 8

select * from salesman

where name not between 'A' and 'M';


-- 9

select * from customer

where cust_name like 'B%';

-- 10

select * from customer

where cust_name like '%n';

-- 11


select * from salesman

where name like 'N__l%';


-- 12


select * from testtable

where col1 like '%/_%' escape '/';

-- 13


select * from testtable
where col1 not like '%/_%' escape '/';

-- 14

select * from testtable

where col1 like '%//%' escape '/';


-- 15

select * from testtable

where col1 not like '%//%' escape '/';

-- 16 

select * from testtable

where col1 like '%/_//%' escape '/';


-- 17

select * from testtable

where col1 not like '%/_//%' escape '/';

-- 18

select * from testtable
where col1 like '%/ % %' escape '/';

-- 19

select * from testtable
where col1 not like '%/ % %' escape '/';

-- 20

select * from customer

where grade is null;

-- 21

select * from customer

where not grade is null;

-- equivalent

where grade is not null;


-- 22

select * from emp_details

where Emp_Lname like 'D%';


