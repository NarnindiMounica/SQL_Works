--ISNULL() and Coalesce():

use profit_db;

--creating table to demonstrate

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

--inserting values into the table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

--selecting all records in the table

select * from customers


--isnull() example: to replace null values with a given string while viewing

select isnull(email, 'email not found'), isnull(phonenumber, 'phone number not found'), isnull(address, 'address not found')
from customers

--coalesce() example: shows first non null value

select *, coalesce(email, phonenumber, 'no contacts found') as first_contact
from customers
