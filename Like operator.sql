use employee_details;

--creating table and inserting rows

create table employees_us
(employeeid int primary key,
firstname nvarchar(25),
lastname nvarchar(25),
department nvarchar(25))

insert into employees_us
(employeeid, firstname, lastname, department)
values
(1, 'alice', 'smith', 'finance'),
(2, 'bob', 'johnson', 'engineering'),
(3, 'charlie', 'williams', 'marketing'),
(4, 'diana', 'brown', 'finance'),
(5, 'edward','jones', 'engineering'),
(6, 'fiona', 'gracia', 'marketing'),
(7, 'george', 'miller', 'finance'),
(8, 'hannah', 'wilson', 'engineering')

--wildcards
--%: 0, 1 or multiple characters
--_: single char

--find employees whose last name starts wth 's'
select * from employees_us
where lastname like 's%'

--find employee whose department cntains 'eng'
select * from employees_us
where department like '%eng%'

--find employees whose last name is exactly 5 char long
select * from employees_us
where lastname like '_____'

--find employees whose first name starts with 'c' or 'd'
select * from employees_us
where firstname like '[cd]%'

--find employees whose last name contains 'son'
select * from employees_us
where lastname like '%son%'

--find employees whose first name contains the letter 'i' as second character
select * from employees_us
where firstname like '_i%'

--find employees whose last name starts with any letter between 'a' to 'l'
select * from employees_us
where lastname like '[a-l]%'

--find employees whose first name does not contain 'o'
select * from employees_us
where firstname not like '%o%'

--fine employees whose last name ends with 'a' and is exactly 5 characters.
select * from employees_us
where lastname like '____a'

--find employees whose department starts with 'mar' and ends with 'ing'
select * from employees_us
where department like 'mar%ing'

--find employees whose first name has an 'a' in third position.
select * from employees_us
where firstname like '__a%'

--find employees whose last name starts with 'br' or 'bl'
select * from employees_us
where lastname like 'b[rl]%'

--find employees whose first name starts with a vowel
select * from employees_us
where firstname like '[aeiou]%'





