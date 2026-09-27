--Having clause  (condition for group by)

select * from sales;

--Sum quantity, sum amount, avg quantity and avg amount for distinct productid whose sum amount is less than 650.

select 
productid,
sum(quantity) as total_quantity,
sum(totalamount) as total_amount,
avg(quantity) as avg_quantity,
avg(totalamount) as avg_amount
from sales
group by productid
having sum(totalamount) < 650

--Sum quantity, sum amount, avg quantity and avg amount for distinct productid whose sum amount is less than 650 and sum of quantity is 21.

select 
productid,
sum(quantity) as total_quantity,
sum(totalamount) as total_amount,
avg(quantity) as avg_quantity,
avg(totalamount) as avg_amount
from sales
group by productid
having sum(totalamount) < 650 and sum(quantity) = 21




--difference between where and having clause

select
productid,
sum(totalamount) as total_sales_amount from sales
where totalamount >= 161
group by productid
having sum(totalamount) < 500
order by productid desc




