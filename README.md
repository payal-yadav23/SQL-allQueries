# 🐬 MySQL All Queries

[![MySQL](https://img.shields.io/badge/Database-MySQL-blue.svg)](https://www.mysql.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Made by Payal Yadav](https://img.shields.io/badge/Made%20by-Payal%20Yadav-purple)](https://github.com/payal-yadav23)

A collection of essential and practical MySQL queries for students, developers, and interview preparation. Covers topics from basic table creation to advanced joins and subqueries.

---

## 📌 Topics Covered

- Table creation and data types
- Constraints: `PRIMARY KEY`, `FOREIGN KEY`, `DEFAULT`, `CHECK`
- Joins: `INNER`, `LEFT`, `RIGHT`
- Aggregate functions: `SUM()`, `COUNT()`, `GROUP BY`, `HAVING`
- Subqueries (correlated and non-correlated)
- String and date functions
- Practice sets: employee and student databases

---

## 💡 Demo Queries

```sql
-- Create a table with CHECK and DEFAULT constraints
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT CHECK (age >= 18),
    course VARCHAR(50) DEFAULT 'B.Tech'
);

-- INNER JOIN example
SELECT e.name, d.name AS department
FROM employees e
JOIN departments d ON e.dept_id = d.id;
```
🚀 Usage
Clone the repo and run .sql files using MySQL Workbench, VS Code, DBeaver, or any SQL editor:
```bash
git clone https://github.com/payal-yadav23/SQL-allQueries.git
```
📧 Author
Made with ❤️ by Payal Yadav

