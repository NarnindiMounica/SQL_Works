create database [SQL Questions]

use [SQL Questions]

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA'),
(5, 'Eve', 'Australia');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID)
VALUES 
(101, 1, '2024-08-01', 1001),
(102, 1, '2024-08-03', 1002),
(103, 2, '2024-08-04', 1001),
(104, 3, '2024-08-05', 1003),
(105, 5, '2024-08-06', 1004);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1001, 'Laptop', 1000),
(1002, 'Smartphone', 700),
(1003, 'Tablet', 500),
(1004, 'Headphones', 200),
(1005, 'Smartwatch', 300);



select * from Customers

select * from Orders

select * from Products


--1) Write an SQL query to find the names of customers who have placed an order.
select customername from customers
where customerid in (select distinct(customerid) from orders)
--or
select distinct CustomerName from customers c inner join Orders o on o.CustomerID = c.CustomerID

--2) Find the list of customers who have not placed any orders.(left anti join)

select distinct(customername) from customers c left join orders o on c.customerid = o.customerid
where o.productid is null


--3) List all orders along with the product name and price.

select distinct(productname), price from products p
inner join orders o
on o.productid = p.productid

--4) Find the names of customers and their orders, including customers who haven't placed any orders.
select c.customername, o.orderid from customers c
left join orders o
on c.customerid = o.customerid

--5) Retrieve a list of products that have never been ordered.
select p.productname from products p
left join orders o
on o.productid = p.productid
where o.orderid is null

--6) Find the total number of orders placed by each customer.

select c.customerid, c.customername, count(o.customerid) as ordered_items from orders o
right join customers c
on c.customerid = o.customerid
group by c.customerid, c.customername


--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
select c.customername, o.productid,p.productname, o.orderdate from customers c
left join orders o
on c.customerid = o.customerid
left join products p
on o.productid = p.productid

--8)Identify pairs of customers who live in same country.
select * from products
select * from customers
select * from orders

select x.customername, y.customername from customers x inner join customers y
on x.country = y.country
where x.customerid <> y.customerid and x.customerid < y.customerid


--9)Find the customer who has spent most on their orders.
select customername from (select c.customername, sum(p.price) as total_spent,
dense_rank() over(order by  sum(p.price) desc) as dr
from customers c inner join orders o
on c.customerid = o.customerid
inner join products p
on o.productid = p.productid
group by c.customername) as m
where dr=1

--10)Find customer who has ordered more than one type of product.
select customername from(select c.customername, count(o.customerid) as ordered_items from customers c
inner join orders o
on c.customerid = o.customerid
inner join products p
on p.productid = o.productid
group by c.customername) as m
where ordered_items > 1

--11)List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.


--12)Retrieve all orders placed by customers from USA.

select p.productname, c.country, c.customername from customers c
inner join orders o on c.customerid = o.customerid
inner join products p on p.productid = o.productid
where c.country like 'usa'


--13)Find the names of customers who have ordered product priced above $500.

select c.customername from customers c
inner join orders o on c.customerid = o.customerid
inner join products p on p.productid = o.productid
where p.price > 500



--14) Find customers who has ordered same product more than once
select distinct(m.customername) from (select customername, productid, count(orderid) from customers c
inner join orders o on c.customerid = o.customerid
group by customername, productid
having count(orderid) > 1) as m

