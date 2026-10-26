<!--
  DATA DIGGER SQL | GitHub README
  Replace YOUR_GOOGLE_DRIVE_FILE_ID with your actual Google Drive video file ID.
-->

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Orbitron&weight=700&size=36&pause=1000&color=00E5FF&center=true&vCenter=true&width=800&lines=DATA+DIGGER+SQL;Explore.+Query.+Analyze.;MySQL+E-Commerce+Database+Project" alt="Data Digger SQL animated title" />

<br/>

<p>
  <img src="https://img.shields.io/badge/MYSQL-Database-00E5FF?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL" />
  <img src="https://img.shields.io/badge/SQL-Query%20Engineering-7C4DFF?style=for-the-badge&logo=databricks&logoColor=white" alt="SQL" />
  <img src="https://img.shields.io/badge/PROJECT-Data%20Analytics-00C853?style=for-the-badge" alt="Data Analytics" />
  <img src="https://img.shields.io/badge/STATUS-Completed-00C853?style=for-the-badge" alt="Project status" />
</p>

### ⚡ Explore Data. Discover Insights. Master SQL.

*A hands-on MySQL project that models an e-commerce database and transforms relational data into meaningful business insights.*

<br/>

<a href="https://github.com/PalAnghan/Data_Digger_SQL">
  <img src="https://img.shields.io/badge/VIEW%20SOURCE%20CODE-181717?style=for-the-badge&logo=github&logoColor=white" alt="View source code" />
</a>
<a href="https://drive.google.com/file/d/YOUR_GOOGLE_DRIVE_FILE_ID/view">
  <img src="https://img.shields.io/badge/WATCH%20PROJECT%20DEMO-FF1744?style=for-the-badge&logo=google-drive&logoColor=white" alt="Watch project demo" />
</a>

</div>

---

## ◈ About the Project

**Data Digger SQL** is a relational database project built with MySQL to simulate the data management needs of an e-commerce business.

The project organizes customer information, orders, products, and order details into four related tables. It demonstrates how SQL can create structured databases, maintain relationships, perform CRUD operations, and answer practical business questions.

The goal is not just to store data — it is to learn how to query, organize, and analyze it.

## ✦ Project Highlights

<table>
<tr>
<td width="50%" valign="top">

### 🗄️ Relational Database
Four interconnected tables with primary and foreign keys.

</td>
<td width="50%" valign="top">

### ⚡ CRUD Operations
Create, read, update, and delete database records.

</td>
</tr>
<tr>
<td width="50%" valign="top">

### 📊 Business Analytics
Calculate revenue, minimum and maximum values, and averages.

</td>
<td width="50%" valign="top">

### 🔍 Smart Queries
Filter records, sort products, group quantities, and rank results.

</td>
</tr>
</table>

## 🧩 Database Architecture

The database contains four tables, each with a specific responsibility.

```mermaid
erDiagram
    CUSTOMERS_TABLE ||--o{ ORDERS_TABLE : places
    ORDERS_TABLE ||--o{ OrderDetails_TABLE : contains
    PRODUCTS_TABLE ||--o{ OrderDetails_TABLE : includes

    CUSTOMERS_TABLE {
        int CustomerID PK
        varchar Name
        varchar Email
        varchar Address
    }

    ORDERS_TABLE {
        int OrderID PK
        int CustomerID FK
        date OrderDate
        decimal TotalAmount
    }

    PRODUCTS_TABLE {
        int ProductID PK
        varchar ProductName
        decimal Price
        int Stock
    }

    OrderDetails_TABLE {
        int OrderDetailID PK
        int OrderID FK
        int ProductID FK
        int Quantity
        decimal SubTotal
    }
```

<details>
<summary><b>01 — Customers Table</b></summary>

Stores customer names, email addresses, and addresses.

**Key concept:** Primary keys and unique record identification.

</details>

<details>
<summary><b>02 — Orders Table</b></summary>

Stores customer orders, order dates, and order amounts.

**Key concept:** Foreign keys and customer-to-order relationships.

</details>

<details>
<summary><b>03 — Products Table</b></summary>

Stores product names, prices, and stock quantities.

**Key concept:** Sorting, filtering, and price analysis.

</details>

<details>
<summary><b>04 — OrderDetails Table</b></summary>

Connects orders with products and records quantities and subtotals.

**Key concept:** Relational joins, aggregation, and sales analysis.

</details>

## 🚀 SQL Concepts Demonstrated

| SQL concept | Application |
|---|---|
| `CREATE TABLE` | Create database tables |
| `INSERT INTO` | Add sample records |
| `SELECT` | Retrieve records |
| `UPDATE` | Modify customer, order, or product data |
| `DELETE` | Remove selected records |
| `WHERE` | Filter records using conditions |
| `ORDER BY` | Sort products by price |
| `BETWEEN` | Find products in a price range |
| `GROUP BY` | Group order details by product |
| `SUM()` and `COUNT()` | Analyze revenue and sales records |
| `MAX()`, `MIN()`, `AVG()` | Calculate summary statistics |
| `LIMIT` | Return the top three products |
| `CURDATE()` and `INTERVAL` | Filter orders by date |
| Primary and foreign keys | Maintain relational integrity |

## 📈 Example: Sales Analytics

### Find total revenue

```sql
SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails_TABLE;
```

Calculates the sum of all recorded order-detail subtotals.

### Identify the top three products by quantity

```sql
SELECT
    ProductID,
    SUM(Quantity) AS Total_Quantity
FROM OrderDetails_TABLE
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;
```

Groups records by product, calculates total quantities, and returns the three highest results.

### Find products in a price range

```sql
SELECT *
FROM PRODUCTS_TABLE
WHERE Price BETWEEN 500 AND 2000;
```

Returns products priced between ₹500 and ₹2,000, including both endpoints.

## 🎬 Project Demo Video

<div align="center">

### ▶️ See Data Digger SQL in Action

**Watch the project demonstration on Google Drive.**

<a href="https://drive.google.com/file/d/YOUR_GOOGLE_DRIVE_FILE_ID/view">
  <img src="https://img.shields.io/badge/▶%20WATCH%20FULL%20DEMO-Open%20Google%20Drive-FF1744?style=for-the-badge&logo=google-drive&logoColor=white" alt="Watch full project demonstration" />
</a>

<br/><br/>

*The demonstration showcases SQL scripts, table creation, sample data, query execution, and result sets.*

</div>

> **Setup required:** Replace `YOUR_GOOGLE_DRIVE_FILE_ID` in both demo links with your actual Google Drive video file ID. Set the video's General access to **Anyone with the link** and Viewer permission so visitors can watch it.

## 🛠️ Technologies Used

<div align="center">

<img src="https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white" alt="MySQL" />
<img src="https://img.shields.io/badge/SQL-003B57?style=flat-square&logo=databricks&logoColor=white" alt="SQL" />
<img src="https://img.shields.io/badge/Visual%20Studio%20Code-007ACC?style=flat-square&logo=visualstudiocode&logoColor=white" alt="Visual Studio Code" />
<img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white" alt="GitHub" />

</div>

## 💻 Getting Started

### Prerequisites

- MySQL Server
- Visual Studio Code or another SQL editor
- A MySQL extension or client configured to connect to your database

### Installation and Setup

**1. Clone the repository**

```bash
git clone https://github.com/PalAnghan/Data_Digger_SQL.git
```

**2. Open the project**

```bash
cd Data_Digger_SQL
```

**3. Open the SQL scripts**

Open the repository in your SQL editor and connect to your local MySQL server.

**4. Select the database**

```sql
CREATE DATABASE IF NOT EXISTS DATA_DIGGER;
USE DATA_DIGGER;
```

**5. Execute the SQL scripts in dependency order**

Run the scripts in this sequence:

1. `Customer_table.sql`
2. `Orders_table.sql`
3. `Products_table.sql`
4. `OrderDetails_table.sql`

Make sure the parent tables exist before creating dependent foreign-key relationships. Check existing records before rerunning insert statements to avoid adding duplicate sample data.

## 🎯 Learning Outcomes

By completing this project, I practiced:

- Designing a relational database schema.
- Creating tables and defining relationships.
- Applying primary keys, foreign keys, and auto-increment columns.
- Executing CRUD operations.
- Writing filtering and sorting queries.
- Using aggregate functions for data analysis.
- Grouping and ranking products by sales quantity.
- Troubleshooting foreign-key constraint errors.
- Managing and documenting SQL projects with GitHub.

## 🔮 Future Improvements

- Add JOIN queries for complete customer-order-product reports.
- Add sales analysis by month and customer.
- Implement stock validation and inventory tracking.
- Add sample reports and query-result screenshots.
- Build a dashboard to visualize sales and product performance.

## 👨‍💻 About the Developer

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&pause=1200&color=00E5FF&center=true&vCenter=true&width=600&lines=Hi%2C+I'm+Pal+Anghan;Aspiring+Data+%26+AI+Professional;Learning+by+Building+Real+Projects" alt="Animated developer introduction" />

**Pal Anghan**

*Aspiring Data & AI Professional | SQL Learner | Developer*

I enjoy building practical projects, exploring data, and continuously improving my programming and analytical skills.

<br/>

<a href="https://github.com/PalAnghan">
  <img src="https://img.shields.io/badge/GitHub-Follow%20My%20Work-181717?style=for-the-badge&logo=github" alt="GitHub profile" />
</a>
<a href="https://www.linkedin.com/in/pal-anghan-7733402b4/">
  <img src="https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn profile" />
</a>

</div>

---

<div align="center">

### ✨ Thanks for visiting Data Digger SQL!

*Keep learning. Keep building. Keep exploring data.*

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:00E5FF,50:7C4DFF,100:121212&height=110&section=footer" width="100%" alt="Animated-style gradient footer" />

</div>
