USE DATA_DIGGER;

CREATE TABLE ORDERDETAILS_TABLE(
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES ORDERS_TABLE(OrderID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCTS_TABLE(ProductID)
);

SHOW TABLES; 
DESC orderdetails_table;

SELECT OrderID
FROM ORDERS_TABLE
ORDER BY OrderID;

SELECT ProductID, ProductName FROM PRODUCTS_TABLE ORDER BY ProductID;

INSERT INTO OrderDetails_TABLE (OrderID, ProductID, Quantity, SubTotal)
VALUES
(31, 1, 2, 3000.00),
(32, 2, 1, 900.00);

INSERT INTO OrderDetails_TABLE(OrderID, ProductID, Quantity, SubTotal)
VALUES
(13, 3, 2, 1000.00),
(14, 4, 1, 12000.00),
(15, 1, 3, 4500.00);




SELECT * FROM OrderDetails_TABLE;


SELECT * FROM OrderDetails_TABLE WHERE OrderID = 31;

SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails_TABLE;

SELECT ProductID, SUM(Quantity) AS Total_Quantity FROM OrderDetails_TABLE
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;

SELECT ProductID, COUNT(*) AS Times_Sold FROM OrderDetails_TABLE
WHERE ProductID = 1 GROUP BY ProductID;