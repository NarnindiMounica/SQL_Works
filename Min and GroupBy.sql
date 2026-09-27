use sales_database;

--selecting data from table

select * from sales;

--min function on different datatypes

select min(quantity) as min_quantity from sales

select min(saledate) as min_saledate from sales

select min(paymentmethod) as min_payment_method from sales

--min function with group by clause

--show min total amount from each storeid

select min(totalamount) as min_total_amt, storeid from sales group by storeid
