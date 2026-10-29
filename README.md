# 📚 Online Bookstore SQL Project

## 📌 Project Overview

The **Online Bookstore SQL Project** is a data analysis project focused on exploring bookstore sales, book inventory, customer information, and order transactions using SQL.

The project uses three CSV datasets—Books, Customers, and Orders—to answer business questions and extract meaningful information from the data. It covers basic SQL queries as well as advanced analysis to understand sales performance, customer purchasing behavior, book popularity, and inventory management.

The goal of this project is to demonstrate practical SQL skills by transforming raw bookstore data into useful business insights.

## 🎯 Project Objectives

- Analyze book inventory, genres, authors, and prices.
- Explore customer information and purchasing behavior.
- Analyze order details and revenue generation.
- Identify popular books and high-performing genres.
- Understand customer spending patterns.
- Calculate remaining book stock after fulfilling orders.
- Practice SQL queries to solve real-world business problems.

## 🗂️ Dataset Description

The project consists of three CSV files:

| Dataset | Description |
|---|---|
| `Books.csv` | Contains book-related information used to analyze genres, prices, publication years, authors, and stock. |
| `Customers.csv` | Contains customer information used to explore customer locations and purchasing activity. |
| `Orders.csv` | Contains order-related information used to analyze transactions, quantities, and revenue. |

**Table Relationships**

The datasets share common columns that connect related records:

- `Book_ID` — Connects book information with the corresponding order records.
- `Customer_ID` — Connects customer information with the corresponding order records.

These relationships allow data from multiple tables to be analyzed together.

## 🔍 Business Questions Solved Using SQL

The project addresses **20 business questions**, divided into basic and advanced SQL analysis.

### 1. Basic SQL Queries

1. Retrieve all books in the Fiction genre.
2. Find books published after 1950.
3. List all customers from Canada.
4. Show orders placed in November 2023.
5. Retrieve the total stock of books available.
6. Find the details of the most expensive book.
7. Show all customers who ordered more than one quantity of a book.
8. Retrieve all orders where the total amount exceeds $20.
9. List all genres available in the Books table.
10. Find the book with the lowest stock.
11. Calculate the total revenue generated from all orders.

### 2. Advanced SQL Queries

1. Retrieve the total number of books sold for each genre.
2. Find the average price of books in the Fantasy genre.
3. List customers who have placed at least two orders.
4. Find the most frequently ordered book.
5. Show the top three most expensive books in the Fantasy genre.
6. Retrieve the total quantity of books sold by each author.
7. List the cities where customers who spent over $30 are located.
8. Find the customer who spent the most on orders.
9. Calculate the stock remaining after fulfilling all orders.

## 🛠️ Tools & Technologies

- **SQL** — Querying, filtering, and analyzing relational data.
- **CSV Files** — Source datasets for books, customers, and orders.
- **Relational Database** — Storing and querying structured bookstore data.

*Note: Add your database platform, such as PostgreSQL or MySQL, once you specify which one you used.*

## 💡 SQL Skills Demonstrated

This project provides practical experience with SQL concepts relevant to data analysis, including:

- Data retrieval using `SELECT`
- Filtering records using `WHERE`
- Sorting results using `ORDER BY`
- Aggregate functions such as `SUM()`, `AVG()`, and `COUNT()`
- Grouping records using `GROUP BY`
- Filtering aggregated results using `HAVING`
- Combining related datasets using `JOIN`
- Working with dates and date-based filtering
- Identifying maximum and minimum values
- Ranking records to identify top-performing books
- Analyzing customer spending and sales performance
- Calculating inventory remaining after sales

*These concepts are included as the skills relevant to the project questions; the exact techniques used depend on your SQL solutions.*

## 📊 Business Value

The analysis addresses several practical business needs:

**Sales Analysis**
- Calculate revenue generated through orders.
- Identify the most frequently ordered books.
- Compare book sales across different genres.

**Customer Analysis**
- Identify customers who place multiple orders.
- Understand customer spending patterns.
- Determine which customers contribute the most revenue.

**Inventory Management**
- Calculate total available stock.
- Identify books with low inventory.
- Estimate remaining stock after fulfilling orders.

**Product Analysis**
- Compare book prices.
- Analyze books by genre and author.
- Identify the most expensive books in selected categories.

These analyses can help an online bookstore make better-informed decisions about inventory, sales, and customer engagement.

## 📁 Suggested Repository Structure

Organize your GitHub repository as follows:

```text
online-bookstore-sql/
│
├── README.md
│
├── Books.csv
│── Customers.csv
│── Orders.csv
│
│── online_bookstore_queries.sql
|
│── query_results.png
```

**Folder descriptions:**

- `data/` — Contains the three CSV datasets, if you choose to include them.
- `sql/` — Contains the SQL queries used to solve the project questions.
- `screenshots/` — Contains screenshots of selected SQL queries and their results.
- `README.md` — Documents the project, datasets, business questions, and SQL skills demonstrated.

*This is a suggested structure. Adjust the file and folder names to match your actual repository.*

## 🚀 Key Takeaways

Working on this project helped me apply SQL concepts to a practical data analysis scenario.

Through 20 business questions, I explored how structured data can be used to analyze sales, customer behavior, product performance, and inventory levels.

The project strengthened my understanding of SQL-based data analysis and provided practical experience in translating business questions into database queries.

## 👨‍💻 About Me

I am a B.Tech Computer Science graduate interested in Data Analytics and business intelligence. I am developing my analytical skills through hands-on projects and learning tools such as Excel, Power Query, Power BI, SQL, and Python.

This Online Bookstore SQL Project is part of my journey toward becoming a Data Analyst, where I aim to use data to solve business problems and support data-driven decision-making.

**Thank you for visiting my project!**
