-- 1. Select all columns from the restaurant table.
USE swiggy ; 

SELECT * FROM restaurants ;

-- 2. Display the names and cities of all restaurants.

SELECT name , city FROM restaurants;

-- 3. Find all restaurants located in Bangalore.

SELECT * FROM restaurants
WHERE city = "Bangalore" ; 

-- 4. List the names and ratings of restaurants with a rating greater than 4.0.

SELECT name , rating 
FROM restaurants
WHERE rating > 4 ;

-- 5. Find restaurants where the cost is less than or equal to 300.

SELECT * FROM restaurants 
WHERE cost <=300 ;

-- 6. Display all distinct cuisine types available in the dataset.

SELECT DISTINCT cuisine FROM restaurants ;

SELECT COUNT(DISTINCT cuisine) AS total_cuisines
FROM restaurants ;

-- 7. Find all restaurants serving Biryani cuisine.

SELECT * FROM restaurants
WHERE cuisine = "Biryani" ;

-- 8. Show the top 5 restaurants with the highest ratings.

SELECT * FROM restaurants
ORDER BY rating DESC
LIMIT 1 ;

-- 9. List restaurants with a rating count greater than 1000.

SELECT * FROM restaurants 
WHERE rating_count > 1000 ;

-- 10. Count the total number of restaurants in the dataset.

SELECT COUNT(*) AS num_rest FROM restaurants;

-- 11. Find the average cost of all restaurants.

SELECT AVG(cost) FROM restaurants ; 

-- 12. Display restaurant names and costs ordered by cost in ascending order.

SELECT name , cost FROM restaurants 
ORDER BY cost ASC;

-- 13. Find the average rating of restaurants for each city.

SELECT city , AVG(rating) AS avg_city_rating
FROM restaurants
GROUP BY city
ORDER BY avg_city_rating DESC ;

-- 14. Count the number of restaurants available in each city..

CREATE VIEW v1 AS
SELECT city , COUNT(*) AS total_rest_city
FROM restaurants
GROUP BY city
ORDER BY total_rest_city DESC;

SELECT * FROM v1;

-- 15. Find the maximum and minimum cost of restaurants for each cuisine.

SELECT cuisine , MAX(cost) AS max_cost,
MIN(cost) AS min_cost
FROM restaurants
WHERE cost > 50
GROUP BY cuisine ;

-- 16. List cuisines that have more than 10 restaurants.

SELECT cuisine , COUNT(*) AS count_cuisine FROM restaurants
GROUP BY cuisine 
HAVING count_cuisine > 10
ORDER BY count_cuisine ASC ;

-- X. Calculate restaurant having the highest number of franchise

SELECT name , COUNT(*) AS franchise FROM restaurants
GROUP BY name 
ORDER BY franchise DESC ; 


