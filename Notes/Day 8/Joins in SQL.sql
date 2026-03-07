DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

-- =========================
-- Employees Table
-- =========================
CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

-- =========================
-- Departments Table
-- =========================
CREATE TABLE departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- =========================
-- Salaries Table
-- =========================
CREATE TABLE salaries (
    EmployeeID INT PRIMARY KEY,
    Salary INT
);

-- =========================
-- Departments Data
-- =========================
INSERT INTO departments VALUES
(1,'Mentor'),
(2,'Designer'),
(3,'Editor'),
(4,'Onboarding'),
(5,'Project Manager'),
(6,'Marketing'),
(7,'Sales'),
(8,'HR');

-- =========================
-- Employees Data
-- =========================
INSERT INTO employees VALUES
(1,'Harshvardhan','Singh',1),
(2,'Ankur','Gupta',2),
(3,'Shivam','Kumar',3),
(4,'Sakshi','Awasthi',4),
(5,'Nitin','Kaur',5),
(6,'Vinit','Singhal',1),
(7,'Adarsh','Sharma',4),
(8,'Prakash','Sakari',6),
(9,'Puneet','Sharma',7),
(10,'Riya','Mehta',8),
(11,'Rahul','Bansal',NULL),     -- no department
(12,'Sneha','Kapoor',3),
(13,'Aman','Verma',2),
(14,'Karan','Malhotra',9);      -- invalid department

-- =========================
-- Salaries Data
-- =========================
INSERT INTO salaries VALUES
(1,50000),
(2,54000),
(3,30000),
(4,60000),
(5,58000),
(6,62000),
(7,56000),
(8,45000),
(9,52000),
(10,48000),
(12,61000);

-- employees 11,13,14 have no salary

-- =========================
-- Table Preview
-- =========================
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM salaries;