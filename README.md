# 🗄️ Data Digger SQL

**A MySQL E-Commerce Database Project**

Data Digger is a hands-on SQL project designed to practice relational database management using MySQL. It simulates a basic e-commerce store and demonstrates how to create tables, manage records, connect tables using foreign keys, and analyze sales data using SQL queries.

## 🎯 Project Objectives

- Practice CRUD operations: Create, Read, Update, and Delete.
- Understand primary keys and foreign keys.
- Retrieve and filter records using `SELECT` and `WHERE`.
- Sort data using `ORDER BY`.
- Perform calculations using aggregate functions.
- Analyze product sales and order revenue.
- Organize SQL scripts in a GitHub repository.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Editor:** Visual Studio Code
- **Version Control:** Git and GitHub

## 📂 Database Structure

The project uses four relational tables.

### 1. Customers Table

Stores customer information.

| Column | Description |
|---|---|
| CustomerID | Unique customer identifier |
| Name | Customer name |
| Email | Customer email address |
| Address | Customer address |

**Queries practiced:**
- Insert sample customer records.
- Retrieve all customer details.
- Update a customer's address.
- Delete a customer using their ID.
- Find customers named Alice.

### 2. Orders Table

Stores customer order information.

| Column | Description |
|---|---|
| OrderID | Unique order identifier |
| CustomerID | References the customer |
| OrderDate | Date of the order |
| TotalAmount | Total order amount |

**Queries practiced:**
- Insert sample orders.
- Retrieve orders for a specific customer.
- Update an order amount.
- Delete an order using its ID.
- Retrieve orders from the last 30 days.
- Calculate the highest, lowest, and average order amounts using `MAX()`, `MIN()`, and `AVG()`.

### 3. Products Table

Stores product details and inventory information.

| Column | Description |
|---|---|
| ProductID | Unique product identifier |
| ProductName | Product name |
| Price | Product price |
| Stock | Available inventory |

**Queries practiced:**
- Insert sample products.
- Sort products by price in descending order.
- Update a product price.
- Delete products that are out of stock.
- Filter products priced between ₹500 and ₹2,000.
- Find the most expensive and cheapest products using `MAX()` and `MIN()`.

### 4. OrderDetails Table

Stores the products and quantities associated with orders.

| Column | Description |
|---|---|
| OrderDetailID | Unique order-detail identifier |
| OrderID | References an order |
| ProductID | References a product |
| Quantity | Quantity ordered |
| SubTotal | Subtotal for the order-detail record |

**Queries practiced:**
- Insert sample order-detail records.
- Retrieve details for a specific order.
- Calculate total revenue using `SUM()`.
- Find the top three products by total quantity ordered.
- Count sales records for a specific product using `COUNT()`.

## 🔗 Table Relationships

- **Customers → Orders:** One customer can have multiple orders.
- **Orders → OrderDetails:** One order can contain multiple order-detail records.
- **Products → OrderDetails:** One product can appear in multiple order-detail records.

Foreign keys maintain referential integrity between related tables.

## 🧠 SQL Concepts Learned

- Database and table creation
- `CREATE TABLE`, `SHOW TABLES`, and `DESC`
- `INSERT INTO`
- `SELECT` and `WHERE`
- `UPDATE` and `DELETE`
- `ORDER BY` and `BETWEEN`
- `CURDATE()` and `INTERVAL`
- `MAX()`, `MIN()`, `AVG()`, `SUM()`, and `COUNT()`
- `GROUP BY` and `LIMIT`
- Primary keys, foreign keys, and relationships

## 🚀 How to Run the Project

1. Install MySQL and Visual Studio Code.
2. Set up a MySQL connection in your SQL editor.
3. Create or select the project database:

   ```sql
   CREATE DATABASE DATA_DIGGER;
   USE DATA_DIGGER;
   ```

4. Execute the SQL scripts in this order:

   1. `Customer_table.sql`
   2. `Orders_table.sql`
   3. `Products_table.sql`
   4. `OrderDetails_table.sql`

5. Run the queries in each file and inspect the results.

**Important:** Execute the customer, order, and product table creation scripts before creating the OrderDetails table, because it references the other tables through foreign keys.

## 📸 Project Results

The project includes query results for customer management, order filtering, product sorting, and order-detail sales analysis.

Screenshots of successful query execution can be added here to demonstrate the results.

## 📌 Future Improvements

- Add more realistic e-commerce sample data.
- Create reports combining multiple tables with `JOIN`.
- Analyze monthly sales and customer purchasing patterns.
- Build a sales dashboard using Power BI.
- Add indexes and explore query optimization.

## 👨‍💻 Author

**Pal Anghan**

GitHub: [@PalAnghan](https://github.com/PalAnghan)

## ⭐ Acknowledgment

This project was created as a practical exercise to strengthen SQL and relational database skills.

If you find this project useful, consider giving the repository a star!
