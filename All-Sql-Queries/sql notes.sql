-------------------------------------------------------STRUCTURED QUERY LANGUAGE---------------------------------------------------------------------------------------

Q) What is MySQL and SQL?
> SQL stands for Structured Query Language.
It is a standard programming language used to manage and manipulate relational databases.

You can use SQL to:

Create and manage databases and tables

Insert, update, delete, and retrieve data

Control access and permissions

🔹 Common SQL Commands:
Command	Description
SELECT	Retrieve data from a table
INSERT	Add new records
UPDATE	Modify existing records
DELETE	Remove records
CREATE	Create tables, databases, etc.
DROP	Delete tables, databases, etc.

✅ What is MySQL?
MySQL is a relational database management system (RDBMS) that uses SQL as its language.
It's an actual software (developed by Oracle Corporation) that lets you store and manage data using SQL commands.

🔹 Key Points About MySQL:
Free and open-source

Used in many web applications (like WordPress, PHP apps)

Can handle large volumes of data

Works with popular languages: PHP, Java, Python, etc.

Q)✅ Difference Between SQL and MySQL
> Feature	       SQL	                                                MySQL
Full Form	Structured Query Language	                     My Structured Query Language
Type	            Language	                                  Relational Database Management System (RDBMS)
Function	Used to write queries for managing data	          Software that uses SQL to manage relational data
Purpose	        To interact with and manipulate databases	  To create, manage, and operate relational databases
Developed by	ANSI / ISO (standard language)	                  Originally by MySQL AB, now owned by Oracle
What it does	Defines how to query and manipulate data	  Runs the database where data is stored
Platform	Used in many RDBMS (MySQL, SQL Server, etc.)	  Specific software; supports SQL
Open Source?	Not software, so not applicable	                  Yes, it is open-source (also has paid versions)
Use Case	Writing commands like SELECT, INSERT, etc.	  Storing user data, managing apps or websites.

----------------------------------- QUERIES of MySQL -------------------------------------------------------------------------------

🔹 1. Database Queries

-- Create a new database
CREATE DATABASE db_name;

-- Show all databases
SHOW DATABASES;

-- Use a specific database
USE db_name;

-- Delete a database
DROP DATABASE db_name;


🔹 2. Table Queries

-- Create a new table
CREATE TABLE table_name (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(50),age INT);

-- Show all tables
SHOW TABLES;

-- Describe table structure
DESCRIBE table_name;

-- Rename a table
RENAME TABLE old_name TO new_name;

-- Delete a table
DROP TABLE table_name;


🔹 3. Data Manipulation (Insert, Update, Delete)


-- Insert data
INSERT INTO table_name (name, age) VALUES ('John', 25);

-- Insert multiple rows
INSERT INTO table_name (name, age) VALUES 
('Alice', 22),
('Bob', 30);

-- Update data
UPDATE table_name SET age = 26 WHERE name = 'John';

-- Delete data
DELETE FROM table_name WHERE name = 'Bob';


🔹 4. Data Retrieval (SELECT Queries)


-- Select all columns
SELECT * FROM table_name;

-- Select specific columns
SELECT name, age FROM table_name;

-- Select with WHERE condition
SELECT * FROM table_name WHERE age > 25;

-- Select using ORDER BY
SELECT * FROM table_name ORDER BY age DESC;

-- Limit the number of results
SELECT * FROM table_name LIMIT 5;

-- Use aliases
SELECT name AS EmployeeName FROM table_name;


🔹 5. Filtering Data


-- Use LIKE
SELECT * FROM table_name WHERE name LIKE 'A%'; -- Starts with A

-- Use IN
SELECT * FROM table_name WHERE age IN (22, 30);

-- Use BETWEEN
SELECT * FROM table_name WHERE age BETWEEN 20 AND 30;

-- Use IS NULL / IS NOT NULL
SELECT * FROM table_name WHERE age IS NULL;


🔹 6. Aggregate Functions


-- Count
SELECT COUNT(*) FROM table_name;

-- Sum
SELECT SUM(age) FROM table_name;

-- Average
SELECT AVG(age) FROM table_name;

-- Maximum / Minimum
SELECT MAX(age), MIN(age) FROM table_name;

-- Group By
SELECT age, COUNT(*) FROM table_name GROUP BY age;



🔹 7. Altering Tables

-- Add a column
ALTER TABLE table_name ADD column_name VARCHAR(50);

-- Modify a column
ALTER TABLE table_name MODIFY column_name INT;

-- Drop a column
ALTER TABLE table_name DROP COLUMN column_name;

-- Rename a column
ALTER TABLE table_name RENAME COLUMN column_name to column_name_you_want;


-- Rename a table_name
ALTER TABLE RENAME table_name to table_name;


🔹 8. Constraints


-- Add NOT NULL
ALTER TABLE table_name MODIFY name VARCHAR(50) NOT NULL;

-- Add UNIQUE
ALTER TABLE table_name ADD UNIQUE(name);

-- Add DEFAULT
ALTER TABLE table_name MODIFY age INT DEFAULT 18;


🔹 9. Subqueries

-- Subquery in WHERE
SELECT name FROM employees 
WHERE id IN (SELECT emp_id FROM salaries WHERE salary > 50000);


🔹 7. Joins

-- INNER JOIN
SELECT a.name, b.salary FROM employees a INNER JOIN salaries b ON a.id = b.emp_id;

-- LEFT JOIN
SELECT a.name, b.salary FROM employees a LEFT JOIN salaries b ON a.id = b.emp_id;

-- RIGHT JOIN
SELECT a.name, b.salary FROM employees a RIGHT JOIN salaries b ON a.id = b.emp_id;

-- FULL OUTER JOIN (using UNION)
SELECT a.name, b.salary FROM employees a LEFT JOIN salaries b ON a.id = b.emp_id
UNION
SELECT a.name, b.salary FROM employees a RIGHT JOIN salaries b ON a.id = b.emp_id;

🔹8.Extra Queries:- 

select version(); -> gives the version of MySQL
select curtime(); -> display current time
select database(); -> current database you are using
select user(); -> user name 
select curdate(); -> current date 
select now(); -> current date and time 

---------------------------------------------------------------------------------------------------------------------

QUERY TO GET ALL DETAILS OF ITEM HAVING MINIMUM AMOUNT 
>  select * from table_name WHERE amount=(select MIN(amount) from table_name);

QUERY TO GET ALL DETAILS OF ITEM HAVING MAXIMUM AMOUNT 
>  select * from table_name WHERE amount=(select MAX(amount) from table_name);

~~~~~~~~~~~~~~~~~ LIMIT and OFFSET ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

🔹 1. LIMIT Clause
The LIMIT clause is used to retrieve(show) the number of rows returned by a query.

📌 Syntax:
      SELECT * FROM table_name LIMIT number;

> select * from library limit 5;

🔹 2. OFFSET Clause
The OFFSET is used with LIMIT to skip a certain number of rows before starting to return the result.

📌 Syntax:
      SELECT * FROM table_name LIMIT (no_of_rows) OFFSET (start_position_no) ;

> select * from library limit 5 offset 5;

🔸 Alternative Short Syntax
You can also combine LIMIT and OFFSET in a shorter way:

>>> SELECT * FROM books LIMIT skip, number;


~~~~~~~~~~~~~~~~~~~ ALIASES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Aliases are temporary names given to columns or tables to make them easier to read or refer to in your SQL queries.

🔸 1. Column Alias
Used to rename a column in the output.

✅ Syntax:
      SELECT column_name AS alias_name FROM table_name;


~~~~~~~~~~~~~~~~~~~~ LIKEWISE OPERATOR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SELECT * FROM table_name WHERE name LIKE 'A%'; -- Starts with A
SELECT * FROM table_name WHERE name LIKE '%A'; -- Ends with A
SELECT * FROM table_name WHERE name LIKE '%A%'; -- In_between with A
SELECT * FROM table_name WHERE name LIKE '_A%'; -- At 2nd position with A
SELECT * FROM table_name WHERE name LIKE '%A_'; -- 2nd last position with A


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ IN OPERATOR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.


Query : SELECT * FROM empdata WHERE State IN ('maharashtra', 'up', 'mp');

Query : SELECT * FROM empdata WHERE State NOT IN ('mp', 'up');


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ BETWEEN OPERATOR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
The BETWEEN operator is inclusive: begin and end values are included.


Query : SELECT * FROM employeerecord WHERE age BETWEEN 10 AND 20;

Query : SELECT * FROM employeerecord WHERE age NOT BETWEEN 100 AND 200;


Query for Distinct : SELECT DISTINCT name FROM students;


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ AUTO INCREMENT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
Often this is the primary key field that we would like to be created automatically every time a new record is inserted.

MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.
By default, the starting value for AUTO_INCREMENT is 1, and it will increment by 1 for each new record.

*) DATE DATA TYPE : 

DATE         - format YYYY-MM-DD            = 2024-12-23
DATETIME     - format: YYYY-MM-DD HH:MI:SS  =  2024-09-26 12:25:14 
TIMESTAMP    - format: YYYY-MM-DD HH:MI:SS
YEAR         - format YYYY or YY            = 2024 or 24


~~~~~~~~~~~~~~~~~~~~~~~ CONSTRAINT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

📌All Constraint of sql 

Constraint	Description
NOT NULL	Prevents NULL values in a column
UNIQUE KEY      Ensures all values in a column are different
PRIMARY KEY	Uniquely identifies each row in a table
FOREIGN KEY	Links a column to another table’s primary key
CHECK	        Ensures that values meet a specific condition
DEFAULT	        Sets a default value if none is provided


*) PRIMARY KEY : 

The PRIMARY KEY constraint uniquely identifies each record in a table.
Primary keys must contain UNIQUE values, and cannot contain NULL values.
A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).


Query : create table employee(emp_id int primary key,name varchar(30),mob_numb varchar(20) NOT NULL,salary int(20));


*) NOT NULL :

By default, a column can hold NULL values.
The NOT NULL constraint enforces a column to NOT accept NULL values.
This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.


Query : create table employee(emp_id int primary key,name varchar(30),mob_numb varchar(20) NOT NULL,salary int(20));
Query : insert into employee values(105,'NULL','23453453456',350000);


*) UNIQUE KEY CONSTRAINT :

The UNIQUE constraint ensures that all values in a column are different.
Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
A PRIMARY KEY constraint automatically has a UNIQUE constraint.
However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.


Query : CREATE TABLE student( stud_id int auto_increment primary key, name varchar(40), bench_no int UNIQUE ,sjoin_date DATE);

Query : insert into student(name,bench_no,sjoin_date) values('om',12,'2024-09-23');

Query : ALTER TABLE student AUTO_INCREMENT = 101;


*)FOREIGN KEY :

A foreign key is a field (or collection of fields) in one table that uniquely identifies a row in another table. The foreign key establishes a link between two tables, ensuring referential integrity by restricting the values that can be inserted into the foreign key column(s).

Key Concepts of a Foreign Key:

Parent Table: The table containing the primary key that the foreign key references.
Child Table: The table that includes the foreign key column(s) referring to the parent table.

*)DEFAULT :
The DEFAULT constraint sets a default value for a column if no value is provided during insertion.

CREATE TABLE employees (id INT PRIMARY KEY, name VARCHAR(100),department VARCHAR(50) DEFAULT 'HR', join_date DATE DEFAULT CURRENT_DATE);

INSERT INTO employees (id, name) VALUES (1, 'Payal');
-- department will be 'HR'
-- join_date will be today’s date

*)CHECK CONSTRAINT :

The CHECK constraint is used to limit the values that can be inserted into a column.

🔸 Note: CHECK is supported from MySQL 8.0.16 and later. Older versions ignore it.


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CLAUSES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


📌All Clauses in sql : 



Clause         Purpose
SELECT	       Specifies the columns to retrieve
FROM	       Specifies the table(s)
WHERE	       Filters records based on condition
GROUP BY       Groups rows that have the same values
HAVING	       Filters grouped data (like WHERE for groups)
ORDER BY       Sorts the result
LIMIT	       Limits the number of rows returned
DISTINCT       Removes duplicate rows
IN, BETWEEN, LIKE, IS NULL  =>	Used inside WHERE clause for filtering


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ COMMAND CATEGORIES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

📌SQL Command Categories :



Category	Commands	                           Used For
DDL	   CREATE, ALTER, DROP, TRUNCATE, RENAME	Defining structure
DML	   INSERT, UPDATE, DELETE	                Manipulating data
DQL	   SELECT	                                Querying data
DCL	   GRANT, REVOKE	                        Controlling access
TCL	   COMMIT, ROLLBACK, SAVEPOINT	                Managing transactions


























