select * from employees

select * into #temp from employees

select * into emp_backup from employees

--Views: A view is a virtual table, it is a stored SQL query
--It helps in reducing the complexity of the code.
--It helps in implementing security

--views are not allowed on temp tables

create view vw_emp as
(select * from emp_backup)

select * from vw_emp

--NOTE: any updates on view will impact the actual table on which view is created.

update vw_emp
set employee_id = 2
where last_name like 'rose'
