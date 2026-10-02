create database [SQL Basics Questions]

use [SQL Basics Questions]

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'John', 'Doe', 'HR', 55000.00),
(2, 'Jane', 'Smith', 'IT', 75000.00),
(3, 'Emily', 'Jones', 'Finance', 65000.00),
(4, 'Michael', 'Brown', 'IT', 80000.00),
(5, 'Sarah', 'Davis', 'HR', 60000.00),
(6, 'David', 'Wilson', 'Finance', 70000.00),
(7, 'Laura', 'Garcia', 'IT', 72000.00),
(8, 'Robert', 'Miller', 'HR', 58000.00),
(9, 'Sophia', 'Martinez', 'Finance', 67000.00),
(10, 'James', 'Anderson', 'IT', 81000.00)



--1) How do you select all columns from the Employees table?

select * from employees

--2) How do you select only the FirstName and Last Name columns from the Employees table?

select firstname, lastname from employees

--3) How do you find all employees who work in the 'IT' department?

select * from employees
where department = 'it'


--4) How do you select employees with a salary greater than 70,000?

select * from employees
where salary > 70000

--5) How do you sort the results by Last Name in ascending order?
select * from employees
order by lastname asc

--6) How do you select distinct departments from the Employees table?

select distinct(department) from employees

--7) How do you count the number of employees in each department?
select count(department), department as department_size
from employees
group by department

--8) How do you find the maximum salary in the Employees table?
select max(salary) as max_salary
from employees


--9) How do you find the average salary of employees in the 'Finance' department?

select avg(salary) as fin_avg_salary
from employees
where department = 'finance'

--10) How do you select employees whose last name starts with 'M'?

select * from employees
where lastname like 'm%'