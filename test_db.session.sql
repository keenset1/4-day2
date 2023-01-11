--1. How many actors are there with the last name ‘Wahlberg’?
=2
SELECT * 
FROM actor
WHERE last_name LIKE  'Wahlberg'

--2. How many payments were made between $3.99 and $5.99?
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
ORDER BY amount DESC;

--3.  (search in iWhat film does the store have the most of?nventory)
SELECT *
FROM inventory
WHERE film_id = 9
--4. How many customers have the last name ‘William’?
SELECT * 
FROM customers
WHERE last_name LIKE  'William'



--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(*) as rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;
--6. How many different district names are there?
=2
SELECT *
From store
GROUP BY store_id
--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(*) as actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT *
FROM customer
WHERE last_name LIKE '%es'
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)
SELECT amount COUNT(amount)
FROM payment 
WHERE customer_id >379 AND customer_id < 431
GROUP BY amount HAVING COUNT(amount) > 250;


--10. Within the film table, how many rating categories are there? And what rating has the most
movies total?
SELECT rating, COUNT(rating) 
FROM film 
GROUP BY rating 
ORDER BY COUNT(rating) DESC;