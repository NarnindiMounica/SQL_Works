select * from sales

--CASE 1:
--all columns were copied from existing table

--This statement will result in the creation of new_table1, which will be having structure and records both same as that of dbo.sales table.

select * into new_table1 from dbo.sales

select * from dbo.sales;
select * from new_table1;

--copying only certain columns to table

select productid, quantity, totalamount into new_table2 from dbo.sales;

select * from new_table2

--CASE 2:

--table structure/ table already exists

--for demo let's create a table with no records
select top 0 * into new_table3 from dbo.sales

select * from new_table3

insert into new_table3 select * from dbo.sales

--copying certain columns only

--for demo let's create a table with no records
select quantity, totalamount into new_table4 from dbo.sales
where 1=0

select * from new_table4

insert into new_table4 (quantity, totalamount) select quantity, totalamount from dbo.sales;


