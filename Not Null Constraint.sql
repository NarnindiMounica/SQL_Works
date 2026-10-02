create database constraints;

use constraints;

--Constraints: conditions that can be applied on the columns of the table and these conditions are the be followed while inserting records into the table.

---NOT NULL Constraint:

--case 1:
--assigning constraints at the time of table creation

create table not_null_test(
employee_id tinyint not null,
age tinyint,
firstname varchar(25));

--checking if given columns are nullable or not

select * from information_schema.columns
where table_name like 'not_null_test';

--inserting values into table 
insert into not_null_test
values (1,23,'sabya')

insert into not_null_test
values (2, NULL, 'ranbir')

select * from not_null_test;

--case 2: table already exists

alter table not_null_test
alter column firstname varchar(25) not null

--cannot apply not null constraint on age, since age column contains a NULL value already.
