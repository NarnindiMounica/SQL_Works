--Primary Key Constraint:

--case 1: at the time of table creation

create table primary_key_test(
eid tinyint primary key,
gender char(1),
age tinyint,
firstname varchar(256))

insert into primary_key_test
values(1, 'm', 26, 'aman')

--insert into primary_key_test  (this will throw an error)
--values(1, 'f', 24, 'asifa')

--case 2: applying constraint on existing table

--in a given table only one primary key is allowed, since we have a primary key on primary_key_test table, can't add one more primary key.

--we can assign 2 columns to be a primary key
--example

create table set_primary_key(
sid int,
firstname varchar(256),
age tinyint)

--alter table set_primary_key
--add primary key (sid, firstname) (thorws an erroe saying, we cannot define primary key on nullable columns)

alter table set_primary_key
alter column sid int not null

alter table set_primary_key
alter column firstname varchar(256) not null

alter table set_primary_key
add primary key (sid, firstname)



