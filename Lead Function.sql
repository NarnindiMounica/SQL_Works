create database profit_db;

use profit_db;

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);


select * from profitdata

--to create a column which shows next month profit for each profit.

select * , lead(profit) over(partition by product order by monthname ) as Next_Month_Profit
from profitdata

--we don't want product column  in the output but we want each month's total profit to be shown by monthnumber & monthname, also a new column 
--should be added to show next month's total profit

select monthnumber, monthname, sum(profit) as monhtly_profit,
lead(sum(profit)) over (order by monthnumber asc) as next_month_profit
from profitdata
group by monthname, monthnumber

