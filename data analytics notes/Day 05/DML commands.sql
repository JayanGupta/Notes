-- Select the database to use
USE AAKASH;

---------------------------------------------------------
-- INSERTING DATA INTO TABLE t1
---------------------------------------------------------

-- Insert full row by specifying values in order of table columns
INSERT INTO t1 VALUES (
    "JYN001",                -- ID
    "Jayan",                 -- NAME
    1234567890,              -- PH_NO
    100,                     -- AGE
    "123456789@gmail.com"    -- EMAIL
);

-- Insert another row with a NULL phone number
INSERT INTO t1 VALUES (
    "ARH123",
    "Arshee",
    NULL,                    -- PH_NO is NULL
    21,
    "1234567890@yahoo.com"
);

-- Insert row by specifying column names (order changed)
INSERT INTO t1 (EMAIL, AGE, PH_NO, NAME, ID) VALUES (
    "1234577890@yahoo.com",
    22,
    1243567890,
    "KESHAV",
    "KSV003"
);

INSERT INTO t1 (EMAIL, AGE, PH_NO, NAME, ID) VALUES (
    "1236690@yahoo.com",
    25,
    9243567890,
    "AKASH",
    "AKS003"
);

---------------------------------------------------------
-- DISABLE SAFE UPDATE MODE TO ALLOW DELETE / UPDATE
---------------------------------------------------------
SET SQL_SAFE_UPDATES = 0;

---------------------------------------------------------
-- DELETE QUERIES
---------------------------------------------------------

-- Delete a specific row using primary key (preferred)
DELETE FROM t1 
WHERE id = "KSV003";

-- Delete based on name (use LIMIT if column is not unique)
DELETE FROM t1 
WHERE NAME = "Arshee"
LIMIT 1;

-- Delete rows where phone number is NULL
DELETE FROM t1
WHERE PH_NO IS NULL;

---------------------------------------------------------
-- UPDATE QUERIES
---------------------------------------------------------

-- Update the age of a specific person
UPDATE t1 
SET AGE = 25
WHERE ID = "JYN001";

-- Update email of a person using their name
UPDATE t1 
SET EMAIL = "new_email@gmail.com"
WHERE NAME = "Jayan";

-- Update phone number for all rows where phone number is NULL
UPDATE t1
SET PH_NO = 9999999999
WHERE PH_NO IS NULL;

-- Update multiple columns at once
UPDATE t1
SET 
    AGE = 30,
    EMAIL = "updated_person@yahoo.com"
WHERE ID = "ARH123";
