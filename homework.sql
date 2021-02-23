SELECT *
FROM actor;

-- 1. How many actors are there with the last name ‘Wahlberg’?  
SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- 2 actors with the last name 'Wahlberg'

-- 2. How many payments were made between $3.99 and $5.99?
SELECT count(amount)
FROM payment
WHERE amount <= 5.99 and amount >= 3.99;
-- 5607 payments were made 

SELECT *
FROM inventory;

--3. What film does the store have the most of? (search in inventory) 
SELECT film_id, count(*)
from inventory
GROUP BY film_id
ORDER BY film_id DESC;
-- film_id: 1000 has the highest count of 8

SELECT *
FROM customer;

-- 4. How many customers have the last name ‘William’? 
SELECT count(last_name)
FROM customer
WHERE last_name = 'William';
-- there are 0 people with the last name william or maybe i did this wrong?

SELECT *
FROM rental;

--5. What store employee (get the id) sold the most rentals? 
SELECT COUNT(staff_id)as num
FROM rental
GROUP BY staff_id
ORDER BY staff_id ASC, num;
-- employee 1 rented out the most films 

SELECT *
FROM address;

-- 6. How many different district names are there? 
SELECT COUNT(DISTINCT district)
FROM address;
-- there are 378 distinct district names 

SELECT *
FROM film_actor;

-- 7. What film has the most actors in it? (use film_actor table and get film_id) 
SELECT film_id, COUNT(actor_id) as num
FROM film_actor
GROUP BY film_id
ORDER BY num DESC;
-- the film id with the most actors is 508 with 15 actors

SELECT *
FROM customer;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT store_id, count(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
ORDER BY store_id ASC;
-- there are 13 names ending in es in store 1

SELECT *
FROM payment;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
SELECT amount, COUNT(amount)as cnt
FROM payment
WHERE customer_id >=380 AND customer_id <= 430
GROUP BY amount
HAVING count(amount) > 250
ORDER BY cnt DESC;
-- there are 3 payment amounts above 250 that are 2.99, 4.99 and 0.99

SELECT *
FROM film;

-- 10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
SELECT COUNT(DISTINCT rating)
FROM film;
--there are 5 rating categories
SELECT MAX(rating)as c
FROM film




