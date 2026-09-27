create database sales_database

use sales_database;

--delete if table exists
drop table sales;

--creating table sales

create table sales
(productid int,
saledate date,
quantity int,
totalamount decimal,
customerid int primary key,
storeid int,
salespersonid int,
paymentmethod varchar(50));

--inserting values into table

insert into sales
(productid, saledate, quantity, totalamount, customerid, storeid, salespersonid, paymentmethod)
values
(1, '2023-08-01', 10, 200.00, 101, 1, 201, 'credit card'),
(2, '2023-08-01', 5, 150.0, 102, 1, 202, 'cash'),
(1, '2023-08-02', 8, 160.0, 103, 2, 203, 'credit card'),
(2, '2023-08-02', 7, 210.0, 104, 2, 204, 'cash'),
(1, '2023-08-03',6, 120.0, 105, 1, 201, NULL),
(3, '2023-08-04', 12, 300.0, 106, 3, 205, 'credit card'),
(1, '2023-08-04', 5, 100.0, 107, 3, 206, 'debit card'),
(2, '2023-08-05', 9, 270.0, 108, 1, 202, NULL),
(3, '2023-08-05', 15, 375.0, 109, 3, 207, 'cash'),
(1, '2023-08-06', 7, 140.0, 110, 2, 203, 'credit card')

--selecting values from table

select * from sales;

--max function on different column types

select max(totalamount) as max_amt from sales;

select max(paymentmethod) from sales;

select max(saledate) from sales;

--group by--max quantity sold for each productid

select productid, max(quantity) as max_quantity from sales group by productid

--maximun total amount for all distinct dates in saledate column

select  saledate, max(totalamount) from sales group by saledate






