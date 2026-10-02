--Foreign key constraint

--case: applying foreign key constraint at the time of table creation

create table test_primary_key(
id tinyint primary key not null,
name varchar(256));

insert into test_primary_key
values (1, 'maya'),( 2, 'soni'),( 3, 'rehan')

select * from test_primary_key;

create table test_foreign_key(
id tinyint foreign key references test_primary_key(id),
course varchar(256));

insert into test_foreign_key values
(1, 'A')

insert into test_foreign_key values(null, 'B')

insert into test_foreign_key values(1, 'C')

insert into test_foreign_key values(3, 'G')

--insert into test_foreign_key values(7, 'G') --> this query gives error as 7 is not present in set of primary keys {1,2,3}

select * from test_foreign_key


--case 2: when table exists

create table test_foreign_key2(
id tinyint,
batch int)

alter table test_foreign_key2
add foreign key (id) references test_primary_key(id) 
