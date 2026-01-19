-- Challenge 1 
-- 1.1
SELECT max(length) as max_duration, min(length) as min_duration FROM sakila.film; 
-- 1.2 
SELECT ROUND(AVG(length)/60, 2) as duration FROM sakila.film; 
-- 2.1 
SELECT DATEDIFF(min(rental_date )-max (rental_date)) FROM sakila.rental;  
-- 2.2 
SELECT *, MONTHNAME (rental_date) AS rental_month, DAYNAME (rental_date) AS rental_weekday FROM sakila.rental LIMIT 20;
-- 3
SELECT title, IFNULL(rental_duration, 'NOT Available') as Rental_Duration FROM sakila.film ORDER BY rental_duration ASC;

-- Challenge 2, 1.1-1.3 
-- 1.1
SELECT COUNT(*) AS total_films FROM sakila.film;

-- 1.2 
SELECT rating, COUNT(*) AS number_of_films FROM sakila.film GROUP BY rating;

-- 1.3 
SELECT rating, count(rating) as count FROM sakila.film GROUP BY rating ORDER BY RIGHT(rating,2) DESC; 

-- Challenge 2, 2.1-2.3
-- 2.1 
SELECT rating, ROUND(AVG(length), 2) AS mean_duration FROM sakila.film GROUP BY rating ORDER BY mean_duration DESC;

-- 2.2 
SELECT rating, ROUND(AVG(length), 2) AS mean_duration FROM sakila.film GROUP BY rating HAVING mean_duration > 120;

-- 2.3 
SELECT ROUND(AVG(length),2) as length, rating FROM sakila.film GROUP BY rating ORDER BY rating DESC; 


