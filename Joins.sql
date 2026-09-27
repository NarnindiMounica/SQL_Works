--joins

--inner join

--selecting database
use sales_database;

--creating tables to use for join

create table table1(
c1 int,
c2 nvarchar(max));

insert into table1(c1, c2)
values (1, 'b'),
(2, 'c'),
(NULL, 'd'),
(3, 'e'),
(7, 'da')

create table table2(
c1 int,
c3 nvarchar(max));

insert into table2(c1, c3)
values (2, 'mb'),
(2, 'nx'),
(NULL, 'mo'),
(4, 'xy'),
(5, 'tf')

select * from table1;
select * from table2;

select * from table1
inner join table2
on table1.c1 = table2.c1

select a.c1, a.c2, b.c3
from table1 a
inner join table2 b
on a.c1 = b.c1

--or

select a.c1, a.c2, b.c3
from table1 a
join table2 b
on a.c1 = b.c1

----left join

select a.c1, a.c2, b.c3
from table1 a
left join table2 b
on a.c1 = b.c1

--or

select a.c1, a.c2, b.c3
from table1 a
left outer join table2 b
on a.c1 = b.c1


---right join

select * from table1
right join table2
on table1.c1 = table2.c1

--with selected columns and alias

select a.c2, b.c1, b.c3 from table1 a
right outer join table2 b
on a.c1 = b.c1





