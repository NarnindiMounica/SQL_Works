use sales_database;

--creating tables for explanation

create table append1
(c1 int, c2 nvarchar(25), c3 int)

insert into append1
(c1, c2, c3)
values
(2, 'b', 8),
(3, 'c', 9)

create table append2
(c1 int, c2 nvarchar(25), c3 int)

insert into append1
(c1, c2, c3)
values
(2, 'b', 8),
(31, 'ca', 91)


select * from append1
union all
append2
