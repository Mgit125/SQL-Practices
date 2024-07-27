
create table Sales (
salesman int not null, 
Fullname varchar(100), 
city varchar(100), 
commission decimal(2,2)
);


insert into Sales (salesman, Fullname, city, commission) values ('5001', 'James Hoog', 'New York', '0.15');

insert into Sales (salesman, Fullname, city, commission) values ('5002', 'Nail Knote', 'Paris', '0.13');

insert into Sales (salesman, Fullname, city, commission) values ('5005', 'Pit Alex', 'London', '0.11');

insert into Sales (salesman, Fullname, city, commission) values ('5006', 'Mc Lyon', 'Rome', '0.13');

insert into Sales (salesman, Fullname, city, commission) values ('5007', 'Paul Adam', 'Rome', '0.13');

insert into Sales (salesman, Fullname, city, commission) values ('5008', 'Lauson Hen', 'San Jose', '0.15');

select * from Sales;

update Sales
set Fullname = 'Chris wax' where Salesman = 5005;

update Sales
set city = 'Istanbull' where Salesman = 5005;