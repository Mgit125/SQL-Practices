-- Famous Singers Database & Stats 

-- Create database of famous singers

CREATE TABLE famous_singers (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    age INTEGER);
    
create table singers_birthplaces (
id int primary key,
name text);

create table singers_sportify_performance (
id int primary key,
monthly_listeners int,
global_rank int);

insert into famous_singers values (1, "Taylor swift", 32);
insert into famous_singers values (2, "Lady Gaga", 36);
insert into famous_singers values (3, "Prince", null);
insert into famous_singers values (4, "Harry Styles", 28);
insert into famous_singers values (5, "David Bowie", null);
insert into famous_singers values (6, "Freddie Mercury", null);
insert into famous_singers values (7, "Lizzo", 34);

select * from famous_singers;

insert into singers_birthplaces values (1, "Reading, PA");
insert into singers_birthplaces values (2, "New York, NY");
insert into singers_birthplaces values (3, "Menneapolis, MN");
insert into singers_birthplaces values (4, "Redditch, UK");
insert into singers_birthplaces values (5, "London, UK");
insert into singers_birthplaces values (6, "London, UK");
insert into singers_birthplaces values (7, "Detroit, MI");

select * from singers_birthplaces;

insert into singers_sportify_performance values (1, 56500000, 9);
insert into singers_sportify_performance values (2, 43700000, 34);
insert into singers_sportify_performance values (3, 96500000, 1000);
insert into singers_sportify_performance values (4, 73700000, 4);
insert into singers_sportify_performance values (5, 16200000, 277);
insert into singers_sportify_performance values (6, 39300000, 41);
insert into singers_sportify_performance values (7, 33700000, 61);

select * from singers_sportify_performance;



-- Display data from all tables, sorted by Spotify global rank

SELECT singers_sportify_performance.global_rank AS sportify_rank, 

famous_singers.name, famous_singers.age, 

singers_birthplaces.name AS birthplace, 

singers_sportify_performance.monthly_listeners AS sportify_monthly_listeners 

FROM famous_singers
    JOIN singers_birthplaces
    ON singers_birthplaces.id = famous_singers.id
    JOIN singers_sportify_performance
    ON singers_sportify_performance.id = famous_singers.id
    ORDER BY sportify_rank;








