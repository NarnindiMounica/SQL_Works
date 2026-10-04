/* 
A common table expression (CTE)  in SQL is a  temporary resuit set  that you can reference within a
SELECT, INSERT, DELETE or UPDATE statements. CTEs  are defined using the WITH keyword, and they can
make complex queries easier to write, understand and maintain by breaking them into simpler parts.
*/

select * from employees

--using temp table to carry on changes

select * into #temp1 from employees;

--Example 1:

with cte as (
select * from #temp1)

select * from cte;

--NOTE: we need to execute above queries together

--Example 2:

with test_cte as (
select employee_id, salary from #temp1 
where employee_id in (112, 101))

select * from test_cte;

--Example 3:
with [common table exp] as (
select * from #temp1 where employee_id in (101, 112, 108))

select * into #temp2 from [common table exp]
--below can be executed individually
select * from #temp2

--Example 4:
with cte_1 as (
select * from #temp1 where employee_id in (101, 112, 108))

update #temp1 set employee_id = 2
where employee_id in (select distinct(employee_id) from cte_1)
--
select * from #temp1

--Example 5:
with cte2 as (
select * from #temp1 where employee_id =111)

delete from cte2;
--
select * from #temp1

--Example 6:

with cte3 as (
select * from #temp1 
where employee_id in (2))

insert into #temp1
select * from cte3

--
select * from #temp1

--Example 7:

select * from employees

select * into #1 from employees

select * from #1

--multiple CTEs

with cte1 as (
select * from #1 where employee_id = 101),
cte2 as (
select * from #1 where employee_id = 108)

select * from cte1
union all
select * from cte2

--Example 8:

with cte3 as (
select employee_id, salary from #1 where employee_id in (101, 104)),
cte4 as (
select employee_id, salary from #1 where employee_id in (111, 112))

select * into #2 from(
select * from cte3
union all
select * from cte4) as new_table
--
select * from #2

--Example 9:

with cte3 as (
select employee_id, salary from #1 where employee_id in (101, 104)),
cte4 as (
select employee_id, salary from #1 where employee_id in (111, 112))

insert into #2 select * from (
select * from cte3
union all
select * from cte4) as x

select * from #2

--Example 10:

with cte3 as (
select employee_id, salary from #1 where employee_id in (104)),
cte4 as (
select employee_id, salary from #1 where employee_id in (112))

delete from #1 where employee_id in 
(select distinct(employee_id) from cte3
union all
select distinct(employee_id) from cte4)
--
select * from #1

--Example 11:

with cte3 as (
select employee_id, salary from #1 where employee_id in (101)),
cte4 as (
select employee_id, salary from #1 where employee_id in (111))

update #1 set employee_id = 2
where employee_id in (
select distinct(employee_id) from cte3
union all
select distinct(employee_id) from cte4)

--
select * from #1







