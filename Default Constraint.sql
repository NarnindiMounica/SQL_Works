--default constraint: used to apply default values to the column

--case 1: applying constraint at the time of table creation

create table default_test
(eid int default 0,
firstname varchar(256) default 'no name',
lastname varchar(256))

insert into default_test (lastname)
values ('sammy')

select * from default_test
--case 2: applying constraint on existing table

alter table default_test
add  default 'na' for lastname
