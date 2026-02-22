---------------------------------------------------------
-- CREATE A NEW DATABASE
---------------------------------------------------------
CREATE DATABASE AAKASH;

-- Select the database to use
USE AAKASH;

---------------------------------------------------------
-- CREATE TABLE
---------------------------------------------------------
CREATE TABLE t1 (
    ID INT,               -- Temporary datatype (we will modify later)
    Name VARCHAR(10),
    ph_no INT,
    ega INT               -- This column will be renamed to age
);

---------------------------------------------------------
-- ADD A NEW COLUMN
---------------------------------------------------------
ALTER TABLE t1 ADD COLUMN (
    email VARCHAR(20) UNIQUE    -- Add email column with UNIQUE constraint
);

---------------------------------------------------------
-- MODIFY COLUMN TYPE
---------------------------------------------------------
ALTER TABLE t1 MODIFY COLUMN ID CHAR(6);    -- Change ID from INT to CHAR(6)

ALTER TABLE t1 MODIFY COLUMN ph_no BIGINT;
---------------------------------------------------------
-- RENAME A COLUMN
---------------------------------------------------------
ALTER TABLE t1 RENAME COLUMN ega TO age;

---------------------------------------------------------
-- ADD PRIMARY KEY CONSTRAINT
---------------------------------------------------------
ALTER TABLE t1 ADD CONSTRAINT c1 PRIMARY KEY (ID);

---------------------------------------------------------
-- DROP PRIMARY KEY
---------------------------------------------------------
ALTER TABLE t1 DROP PRIMARY KEY;

---------------------------------------------------------
-- RENAME TABLE
---------------------------------------------------------
RENAME TABLE t1 TO ram;

-- Rename back to original name
ALTER TABLE ram RENAME t1;

