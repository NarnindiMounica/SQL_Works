select * from profitdata

--lag function:
--adding a column whihc shows profit of previous month based on product

select *,
lag(profit) over(partition by product order by monthnumber asc) as previous_month_profit
from profitdata

--we don't want product column  in the output but we want each month's total profit to be shown by monthnumber & monthname, also a new column 
--should be added to show previous month's total profit

select monthnumber, monthname, sum(profit) as total_profit,
lag(sum(profit)) over( order by monthnumber asc) as previous_month_profit
from profitdata
group by monthnumber, monthname
order by monthnumber
