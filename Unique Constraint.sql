--unique constraint: ensures column contains only unique values

--case 1: we need to create a table

create table unique_test
(sid int unique,
age tinyint not null,
firstname varchar(25) not null unique,
lastname varchar(25))

--inserting records into table

insert into unique_test
values
(1, 23, 'amar', 'singh')

select * from unique_test

insert into unique_test
values
(11, 27, 'amreen', 'singh')

--case 2: applying constraint on existing table

--alter table unique_test
--add unique lastname (this gives error since we have duplicate values in lastname column already)

alter table unique_test
add unique (age)


