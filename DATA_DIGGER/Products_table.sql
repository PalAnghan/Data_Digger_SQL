USE DATA_DIGGER;

CREATE TABLE PRODUCTS_TABLE(
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

SHOW TABLES;

DESC PRODUCTS_TABLE;


INSERT INTO PRODUCTS_TABLE (ProductName, Price, Stock)
VALUES
('Headphones', 1500.00, 20),
('Keyboard', 800.00, 15),
('Mouse', 500.00, 30),
('Monitor', 12000.00, 10),
('USB Cable', 250.00, 50);

SELECT * FROM PRODUCTS_TABLE;

SELECT * FROM products_table 
ORDER BY Price DESC;

UPDATE products_table SET
Price = 900 WHERE ProductID = 2;

SELECT * FROM products_table;


DELETE FROM PRODUCTS_TABLE
WHERE Stock = 0;

UPDATE PRODUCTS_TABLE
SET Stock = 0
WHERE ProductID = 5;

SELECT * FROM products_table;


SELECT * FROM PRODUCTS_TABLE
WHERE Price BETWEEN 500 AND 2000;




SELECT ProductName, Price FROM PRODUCTS_TABLE
WHERE Price = (SELECT MAX(Price) FROM PRODUCTS_TABLE) OR Price = (SELECT MIN(Price) FROM PRODUCTS_TABLE);