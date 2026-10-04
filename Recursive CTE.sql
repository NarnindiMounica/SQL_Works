--Recursive CTE: 
--Example: get numbers from 1 to 5:

with [r cte] as (
--anchor query: output of anchor query is served as input to recursive query

select 1 as n
union all

--recursive query

select n+1 from [r cte] where n<=4)
--
select * from [r cte]

--Example: factorial of a number

with fact_cte as
(
select 1 as n
union all
select n+ 1 from fact_cte where n <= 3)

select exp(sum(log(n))) from fact_cte




