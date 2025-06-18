# Advanced SQL – Stored Procedure (Employee Management System)

This exercise focuses on creating and executing a **Stored Procedure** in SQL Server for inserting employee records into an `Employees` table. It demonstrates how to encapsulate insert logic in a stored procedure with parameters.

---

## 📋 Database Schema

### `Departments` Table

```sql
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

Employees Table

sql

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    Salary DECIMAL(10,2),
    JoinDate DATE
);

🛠️ Stored Procedure – sp_InsertEmployee
📌 Goal
Create a stored procedure that inserts a new employee into the Employees table using parameters.

CREATE PROCEDURE sp_InsertEmployee
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepartmentID INT,
    @Salary DECIMAL(10,2),
    @JoinDate DATE
AS
BEGIN
    INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, JoinDate)
    VALUES (@FirstName, @LastName, @DepartmentID, @Salary, @JoinDate);
END;
GO

▶️ Sample Execution

EXEC sp_InsertEmployee
    @FirstName = 'Alex',
    @LastName = 'Brown',
    @DepartmentID = 2,
    @Salary = 6200.00,
    @JoinDate = '2023-06-18';

✅ Output

On successful execution, a new row will be inserted into the Employees table:

EmployeeID	FirstName	LastName	DepartmentID	Salary	JoinDate
(auto)	Alex	Brown	2	6200.00	2023-06-18


📈 Learning Outcomes
Understand how to encapsulate logic using stored procedures.

Use SQL Server-specific syntax like CREATE PROCEDURE and EXEC.

Improve database modularity and reusability.



# 🧠 Exercise 5: Return Employee Count by Department using Stored Procedure

## 🎯 Goal
Create a stored procedure that returns the total number of employees in a specific department.

## 🏗️ Schema Used

- `Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, JoinDate)`
- `Departments (DepartmentID, DepartmentName)`

## 🛠️ Procedure Definition

```sql
CREATE PROCEDURE sp_GetEmployeeCountByDepartment
    @DepartmentID INT
AS
BEGIN
    SELECT COUNT(*) AS TotalEmployees
    FROM Employees
    WHERE DepartmentID = @DepartmentID;
END;


▶️ Execution

sql

EXEC sp_GetEmployeeCountByDepartment @DepartmentID = 1;

🧮 Sample Output

TotalEmployees
1

📚 Learning Outcome

Learn how to return scalar data from stored procedures.

Practice parameterized queries and departmental analysis.
