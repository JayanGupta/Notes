-- =========================================
-- SQL JOIN & SET OPERATIONS PRACTICE ANSWERS
-- =========================================


-- Q1
-- Display EmployeeID, FirstName, LastName, DepartmentName
-- for employees who belong to a department

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM employees e
INNER JOIN department d
ON e.DepartmentID = d.DepartmentID;



-- Q2
-- Display EmployeeID, FirstName, Salary for employees
-- who have a salary record

SELECT e.EmployeeID, e.FirstName, s.Salary
FROM employees e
INNER JOIN salaries s
ON e.EmployeeID = s.EmployeeID;



-- Q3
-- Display EmployeeID, FirstName, DepartmentName
-- for all employees even if they do not belong to a department

SELECT e.EmployeeID, e.FirstName, d.DepartmentName
FROM employees e
LEFT JOIN department d
ON e.DepartmentID = d.DepartmentID;



-- Q4
-- Display all departments along with employees working in them.
-- Departments without employees should also appear

SELECT d.DepartmentName, e.EmployeeID, e.FirstName
FROM department d
LEFT JOIN employees e
ON d.DepartmentID = e.DepartmentID;



-- Q5
-- Display EmployeeID, FirstName, DepartmentName, Salary
-- for employees who have both department and salary information

SELECT e.EmployeeID, e.FirstName, d.DepartmentName, s.Salary
FROM employees e
INNER JOIN department d
ON e.DepartmentID = d.DepartmentID
INNER JOIN salaries s
ON e.EmployeeID = s.EmployeeID;



-- Q6
-- Display all employees and their salary.
-- Employees without salary should also appear

SELECT e.EmployeeID, e.FirstName, s.Salary
FROM employees e
LEFT JOIN salaries s
ON e.EmployeeID = s.EmployeeID;



-- Q7
-- Display employees who do not have a salary record

SELECT e.EmployeeID, e.FirstName
FROM employees e
LEFT JOIN salaries s
ON e.EmployeeID = s.EmployeeID
WHERE s.EmployeeID IS NULL;



-- Q8
-- Display all departments and employees working in them.
-- Departments with no employees should also be displayed

SELECT d.DepartmentName, e.EmployeeID, e.FirstName
FROM department d
LEFT JOIN employees e
ON d.DepartmentID = e.DepartmentID;



-- Q9
-- UNION employees FirstName and DepartmentName

SELECT FirstName AS Name
FROM employees

UNION

SELECT DepartmentName
FROM department;



-- Q10
-- UNION ALL employees FirstName and DepartmentName

SELECT FirstName AS Name
FROM employees

UNION ALL

SELECT DepartmentName
FROM department;



-- Q11
-- Display EmployeeID from employees and salaries using UNION

SELECT EmployeeID
FROM employees

UNION

SELECT EmployeeID
FROM salaries;



-- Q12
-- Find employees appearing in both employees and salaries tables

SELECT e.EmployeeID
FROM employees e
INNER JOIN salaries s
ON e.EmployeeID = s.EmployeeID;



-- Q13
-- Generate all possible combinations of employees and departments

SELECT e.FirstName, d.DepartmentName
FROM employees e
CROSS JOIN department d;



-- Q14
-- SELF JOIN to display pairs of employees in the same department

SELECT 
    e1.FirstName AS Employee1,
    e2.FirstName AS Employee2,
    e1.DepartmentID
FROM employees e1
JOIN employees e2
ON e1.DepartmentID = e2.DepartmentID
AND e1.EmployeeID < e2.EmployeeID;