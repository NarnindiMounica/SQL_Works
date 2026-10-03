select * from employeesalaries

--incorrect query:
select *,
last_value(salary) over(order by salary asc)
from employeesalaries

--correct query: need to consider all rows, so need to mention it explictly
select *,
last_value(salary) over(order by salary asc rows between unbounded preceding and unbounded following)
from employeesalaries

--partitioned by department:
select *,
last_value(salary) over(partition by department order by salary asc rows between unbounded preceding and unbounded following )
from employeesalaries

--including employeename
select *,
last_value(salary) over(partition by department order by salary asc rows between unbounded preceding and unbounded following ),
last_value(employeename) over(partition by department order by salary asc rows between unbounded preceding and unbounded following)
from employeesalaries
