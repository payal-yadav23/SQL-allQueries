GROUP BY & HAVING CLAUSE : 

The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.


FOREIGN KEY :

A foreign key is a field (or collection of fields) in one table that uniquely identifies a row in another table. The foreign key establishes a link between two tables, ensuring referential integrity by restricting the values that can be inserted into the foreign key column(s).

Key Concepts of a Foreign Key:

Parent Table: The table containing the primary key that the foreign key references.
Child Table: The table that includes the foreign key column(s) referring to the parent table.


*) JOINS : 

A JOIN clause is used
 to combine rows from two or more tables, based on a related column between them.
Joins are used to retrieve data from multiple tables in a single query. MySQL supports different types of joins, each serving a specific purpose.



types of joins:

1. INNER JOIN        = The INNER JOIN keyword selects records that have matching values in both tables.

2. LEFT JOIN         = The LEFT JOIN keyword returns all records from the left table (table1), and the matching records (if any) from the right table (table2).

3. RIGHT JOIN        = The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records (if any) from the left table (table1).

4. FULL OUTER JOIN   = A FULL JOIN returns all records when there is a match in either the left or right table.

5. CROSS JOIN        = The CROSS JOIN keyword returns all records from both tables (table1 and table2).

6. SELF JOIN         = Shows employees and their managers (from the same table)./ it is a regular join, but the table is joined with itself.



Create the 2 tables employees and departments tables:



CREATE TABLE departments (dept_id INT PRIMARY KEY,dept_name VARCHAR(50));


CREATE TABLE employees ( emp_id INT PRIMARY KEY, name VARCHAR(50),dept_id INT, manager_id INT,  FOREIGN KEY (dept_id) REFERENCES departments(dept_id));


INSERT RECORD : 


INSERT INTO departments (dept_id, dept_name)VALUES (1, 'HR'),(2, 'Engineering'),(3, 'Finance'),(4, 'Marketing');

INSERT INTO employees (emp_id, name, dept_id, manager_id)VALUES (101, 'Alice', 1, NULL),(102, 'Bob', 2, 101),(103, 'Charlie', 2, 102),(104, 'David', 3, NULL),(105, 'Eve', NULL, 101);


1. INNER JOIN :

Query : SELECT employees.name, departments.dept_name
	FROM employees
	INNER JOIN departments
	ON employees.dept_id = departments.dept_id;


2. LEFT JOIN :

Query : SELECT employees.name, departments.dept_name
        FROM employees
	LEFT JOIN departments
	ON employees.dept_id = departments.dept_id;
 

3. RIGHT JOIN :

Query : SELECT employees.name, departments.dept_name
	FROM employees
	RIGHT JOIN departments
	ON employees.dept_id = departments.dept_id;


4. FULL OUTER JOIN :

Query : SELECT employees.name, departments.dept_name
	FROM employees
	FULL OUTER JOIN departments
	ON employees.dept_id = departments.dept_id;

5. CROSS JOIN :

Query : SELECT employees.name, departments.dept_name
	FROM employees
	CROSS JOIN departments;


6. SELF JOIN :

Query : SELECT e1.name AS Employee, e2.name AS Manager
	FROM employees e1
	INNER JOIN employees e2
	ON e1.manager_id = e2.emp_id;

