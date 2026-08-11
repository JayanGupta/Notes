-- =========================================
-- SWIGGY RESTAURANT ANALYSIS
-- Demonstrating Subqueries vs CTEs
-- =========================================

USE swiggy;

SELECT * FROM restaurants;


-- =========================================
-- 1. Restaurant with Maximum Cost
-- =========================================

-- Using Subquery

SELECT name
FROM restaurants
WHERE cost = (
    SELECT MAX(cost)
    FROM restaurants
);


-- Using CTE

WITH max_cost AS (
    SELECT MAX(cost) AS highest_cost
    FROM restaurants
)

SELECT name
FROM restaurants
WHERE cost = (SELECT highest_cost FROM max_cost);



-- =========================================
-- 2. Least Visited Restaurant in Abohar
-- =========================================

-- Using Subquery

SELECT *
FROM restaurants
WHERE city = 'abohar'
AND rating_count = (
    SELECT MIN(rating_count)
    FROM restaurants
    WHERE city = 'abohar'
);


-- Using CTE

WITH abohar_visits AS (
    SELECT MIN(rating_count) AS least_visits
    FROM restaurants
    WHERE city = 'abohar'
)

SELECT *
FROM restaurants
WHERE city = 'abohar'
AND rating_count = (
    SELECT least_visits FROM abohar_visits
);



-- =========================================
-- 3. Restaurant Generating Maximum Revenue
-- (Revenue approximated as cost * rating_count)
-- =========================================

-- Using Subquery

SELECT *
FROM restaurants
WHERE cost * rating_count = (
    SELECT MAX(cost * rating_count)
    FROM restaurants
);


-- Using CTE

WITH revenue_table AS (
    SELECT *, cost * rating_count AS revenue
    FROM restaurants
),

max_revenue AS (
    SELECT MAX(revenue) AS highest_revenue
    FROM revenue_table
)

SELECT *
FROM revenue_table
WHERE revenue = (
    SELECT highest_revenue FROM max_revenue
);



-- =========================================
-- 4. Restaurants with Rating Higher than Average
-- =========================================

-- Using Subquery

SELECT COUNT(*) AS best_restaurants
FROM restaurants
WHERE rating > (
    SELECT AVG(rating)
    FROM restaurants
);


-- Using CTE

WITH avg_rating AS (
    SELECT AVG(rating) AS avg_r
    FROM restaurants
)

SELECT COUNT(*) AS best_restaurants
FROM restaurants
WHERE rating > (
    SELECT avg_r FROM avg_rating
);



-- =========================================
-- 5. Delhi Restaurant Generating Highest Revenue
-- =========================================

-- Using Subquery

SELECT name AS best_restaurant
FROM restaurants
WHERE city = 'Delhi'
AND cost * rating_count = (
    SELECT MAX(cost * rating_count)
    FROM restaurants
    WHERE city = 'Delhi'
);


-- Using CTE

WITH delhi_revenue AS (
    SELECT name, cost * rating_count AS revenue
    FROM restaurants
    WHERE city = 'Delhi'
),

max_delhi_revenue AS (
    SELECT MAX(revenue) AS highest_revenue
    FROM delhi_revenue
)

SELECT name
FROM delhi_revenue
WHERE revenue = (
    SELECT highest_revenue FROM max_delhi_revenue
);



-- =========================================
-- 6. Restaurant Chain with Maximum Branches
-- =========================================

-- Using GROUP BY

SELECT name, COUNT(*) AS no_of_branches
FROM restaurants
GROUP BY name
ORDER BY no_of_branches DESC
LIMIT 1;


-- Using CTE

WITH branch_count AS (
    SELECT name, COUNT(*) AS branches
    FROM restaurants
    GROUP BY name
)

SELECT *
FROM branch_count
ORDER BY branches DESC
LIMIT 1;