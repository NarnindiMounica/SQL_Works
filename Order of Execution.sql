--order of execution

select distinct top 1 department, avg(salary) as avg_salary
from employees
where salary > 50000
group by department
having avg(salary) >75000
order by department asc

--order:
--from & joins
--where
--group by
--having
--select 
--distinct
--order by
--top

--below query will throw an error, since having is executed first and then select.

--select distinct top 1 department, avg(salary) as avg_salary
--from employees
--where salary > 50000
--group by department
--having avg_salary >75000
--order by department asc
