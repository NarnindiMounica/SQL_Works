select * from employees

create procedure sp_emp
as begin
( select * from employees)
end

sp_emp

--or

exec sp_emp

--or

execute sp_emp

--making changes to stored procedure

alter proc sp_emp
as begin
(select employee_id, department from employees)
end
--
sp_emp

