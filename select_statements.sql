-- Hello World SQL QUery, SELECT all records from actor table
SELECT *
FROM actor;

--  Query for first_name in the actor table

SELECT first_name, last_name
FROM actor;

-- query for a first_name that equals Nick - using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

--query for a first_name that is equal to Nick using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

--Query for all first_name data that starts with J using the like and where calsuses - using the wildcard
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

-- queary for all first_name data that starts with K and has 2 letters after the K using LIKE and WHERE clauses using the underscore
SELECT first_name, last_name
FROM actor
WHERE first_name like 'K__'

-- query for all first_name that starts with K and ends with th and ahs at least 2 letters in-between
-- using the LIKE and Where clauses - using BOTH wildcard and underscore
select first_name,last_name
FROM actor
WHERE first_name LIKE 'K__%th';


-- comparing operators are:
--Greater than (>) -- less than (<)
--greater or equal (>=) == less than or equal (<=)
-- not equal (<>)

-- explore data with select all query (specific to changing into new table)
SELECT *
FROM payment;

-- query for data that shows customers who paid an amount greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

-- query for data that shoes customers who paid an amount less than $7.99
SELECT customer_id, amount 
FROM payment
WHERE amount < 7.99;

-- customers for data that shows customers who paid an amount less than or equal to 7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

-- query for data that shows customeres who paid an amount greater than or euqal to 2.00
-- diplay amount in ascending order -- order by clause 
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC; -- DESC for descending

-- query for data that shows customers who paid an amoun between $2.00 and 7.99
--usinf teh between and AND clauses
SELECT customer_id, amount 
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

-- Query for data that shows customers who paid 
-- an amount NOT EQUAL to 0.00
-- orderd in DESCEDING order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount ASC;

-- SQL AGGREGARIONS => sum(),avgg(), count(),min(),max()

-- query to diplay the sum amounds paid thhat are hreater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99

-- query display average amounts paid that are greater than 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- query to display the count of amounts paid that are greater than 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99

-- query to display the count DISTINCT amounts paid that are greater than 5.99
SELECT COUNT(DISTINCT amount)
FROM payment 
WHERE amount > 5.99;

-- query to display the min amount great than 7.99
SELECT MIN(amount)
FROM payment 
WHERE amount > 7.99;

--query to siplay the max amount greater than 7.99
SELECT MAX(amount)
FROM payment
WHERE amount > 7.99;

--query to display the count of each amount paid that is greater than 5.99 - using the group by clasue
SELECT amount, COUNT(*)
FROM payment
WHERE amount > 5.99
GROUP BY amount;

-- query to display_ids with the summed amount for each customer_id
SELECT customer_id, SUM(amount) AS total_paid, COUNT(amount) as total_vist
FROM payment 
GROUP BY customer_id
ORDER BY total_vist DESC, total_paid DESC;

--query to display the count of each amount paid that is more tan 10 - using group by and having clause
SELECT amount, COUNT(*)
FROM payment
GROUP BY amount
HAVING COUNT(*) > 10;

-- QUERY to display the top 10 customers who spent the most - using groupo by and limit 
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 10;
