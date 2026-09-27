select * from sales

--sum and avg functions

select sum(quantity) as total_quantity, sum(totalamount) as sum_of_totalamount from sales;

select avg(quantity) as avg_quantity, avg(totalamount) as avg_of_totalamount from sales;

--sum of quantity, sum of totalamount, avg of quantity, avg of totalamount for each distinct product

select productid, sum(quantity) as total_quantity, sum(totalamount) as sum_of_totalamount, avg(quantity) as avg_quantity, avg(totalamount) as avg_of_totalamount
from sales
group by productid

--sum of quantity, sum of totalamount, avg of quantity, avg of totalamount for  distinct productid and storeid

select productid, storeid, sum(quantity) as total_quantity, sum(totalamount) as sum_of_totalamount, avg(quantity) as avg_quantity, avg(totalamount) as avg_of_totalamount
from sales
group by productid, storeid

--count function

select count(*) as num_of_rows from sales

select count(paymentmethod) from sales --(null cells are not counted)

select count(distinct(productid)) from sales

select count(distinct(paymentmethod)) from sales --(null cells are not counted)

select paymentmethod, count(paymentmethod) as num_of_paymethods from sales
group by paymentmethod

select paymentmethod, count(*) as pay_mode from sales --(null cells are also considered since we gave * to count)
group by paymentmethod


