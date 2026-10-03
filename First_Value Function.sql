CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

select * from employeesalaries

--first_value:

--finding least salary from given table
select *,
first_value(salary) over( order by salary) as least_salary
from employeesalaries

--finding employeename with least salary from given table
select *,
first_value(employeename) over( order by salary) as least_salaries_empname
from employeesalaries

--to get both

select *,
first_value(salary) over(order by employeeid asc) as least_salary,
first_value(employeename) over(order by employeeid asc) as least_salaried_emp
from employeesalaries

--using partition by department

select *,
first_value(salary) over(partition by department order by salary) as first_value_salary
from employeesalaries




