-- -----------------------------------------------------
-- Database Setup
-- -----------------------------------------------------

DROP DATABASE IF EXISTS learning_sets;
CREATE DATABASE learning_sets;
USE learning_sets;

-- -----------------------------------------------------
-- Table 1: Students enrolled in Python course
-- -----------------------------------------------------

CREATE TABLE python_students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO python_students VALUES
(1,'Aman','Delhi'),
(2,'Priya','Mumbai'),
(3,'Rahul','Delhi'),
(4,'Sneha','Bangalore'),
(5,'Arjun','Pune'),
(6,'Neha','Delhi');


-- -----------------------------------------------------
-- Table 2: Students enrolled in SQL course
-- -----------------------------------------------------

CREATE TABLE sql_students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO sql_students VALUES
(3,'Rahul','Delhi'),
(4,'Sneha','Bangalore'),
(5,'Arjun','Pune'),
(7,'Karan','Chandigarh'),
(8,'Riya','Jaipur'),
(9,'Vikram','Mumbai');


-- -----------------------------------------------------
-- Table 3: Students enrolled in Data Science course
-- -----------------------------------------------------

CREATE TABLE data_science_students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO data_science_students VALUES
(2,'Priya','Mumbai'),
(4,'Sneha','Bangalore'),
(6,'Neha','Delhi'),
(8,'Riya','Jaipur'),
(10,'Isha','Hyderabad');


-- -----------------------------------------------------
-- Practice Questions
-- -----------------------------------------------------

-- Q1
-- Show the list of ALL students who enrolled in Python OR SQL course.

-- Q2
-- Show the list of ALL students from Python and SQL courses including duplicates.

-- Q3
-- Find students who enrolled in BOTH Python and SQL courses.

-- Q4
-- Find students who enrolled in Python but NOT in SQL.

-- Q5
-- Find students who enrolled in SQL OR Data Science but remove duplicates.

-- Q6
-- Find students who are enrolled in ALL THREE courses.