
CREATE DATABASE DATA_DIGGER;

SHOW DATABASES;

USE DATA_DIGGER;

 
CREATE TABLE IF NOT EXISTS CUSTOMERS_TABLE(
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50)
);

SHOW TABLES;

DESC CUSTOMERS_TABLE;

INSERT INTO CUSTOMERS_TABLE (Name, Email, Address)
VALUES
('Amirt', 'amirt@gmail.com', 'Surat'),
('Rahul', 'rahul@gmail.com', 'Vadodara'),
('Priya', 'priya@gmail.com', 'Ahmedabad'),
('Amit', 'amit@gmail.com', 'Rajkot'),
('Neha', 'neha@gmail.com', 'Mumbai');

SELECT * FROM CUSTOMERS_TABLE;

UPDATE CUSTOMERS_TABLE
SET ADDRESS = 'PUNE'
WHERE CustomerID = 1;

SELECT * FROM CUSTOMERS_TABLE;

DELETE FROM CUSTOMERS_TABLE
WHERE CustomerID = 5;

SELECT * FROM CUSTOMERS_TABLE;  

INSERT INTO CUSTOMERS_TABLE (Name, Email, Address)VALUES
('Alice', 'Alice@gmail.com', 'Rajkort');

SELECT * FROM CUSTOMERS_TABLE
WHERE NAME = 'Alice';

