--check constraint: 
--it checks for certain condition that can be applied on the columns of the table.
--if the condition is not net, we will not be able to insert records into the table

--case 1: table does't exist

create table check_test
(sid tinyint unique,
age tinyint check (age between 18 and 35));

insert into check_test values
(1, 18),(2, 35)

--insert into check_test values (3, 10) (this will fail due to check constraint)

--case 2: table already exists

alter table check_test
add check (sid >0 and sid <20)



