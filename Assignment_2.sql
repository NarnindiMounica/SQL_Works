
select * from Employees

--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from employees
where department = 'it' and salary > 75000


--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees
where department = 'hr' or salary < 60000

--3. How do you select employees who do not work in the 'Finance' department?
select * from employees
where department not like 'finance'

--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from employees
where department = 'finance' and salary between 60000 and 70000

--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from employees
where department = 'it' and salary < 80000

--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from  employees
where department in ('hr', 'finance') and salary > 65000

--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from employees
where department not like 'hr' and lastname like 'd%'

--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?

select * from employees
where department not like 'it' and salary > 70000

--9. How do you select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'?
select * from employees
where department like 'it' and (salary > 75000 or firstname like '%laura%')

--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from employees
where department not in ('hr', 'it')