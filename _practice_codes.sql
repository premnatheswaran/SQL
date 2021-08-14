SELECT * FROM actor;

SELECT DISTINCT rating From film; 

Select first_name, last_name from customer Where first_name = 'Jamie' and last_name = 'Rice';

SELECT * FROM customer WHERE first_name = 'Mary';

SELECT email FROM customer WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM film WHERE title = 'Outlaw Hanky';

SELECT phone FROM address WHERE address = '259 Ipoh Drive';

SELECT COUNT (DISTINCT rating) FROM film;

SELECT COUNT (DISTINCT rating) FROM film;

SELECT film_id FROM inventory;

SELECT film_id FROM inventory LIMIT 5;
	/* Limits the number of rows displayed in output */
	
SELECT film_id, store_id FROM inventory ORDER by store_id Desc;
	/* sorts the output in ascending (ASC) or descending (DESC) order. Can be sorted based on multiple columns */

SELECT first_name, last_name FROM customer ORDER BY first_name ASC, last_name DESC;

SELECT first_name FROM customer ORDER BY last_name ASC;

SELECT customer_id FROM payment ORDER BY amount DESC LIMIT 10;

SELECT title FROM film ORDER BY film_id ASC limit 5;

/* BETWEEN - to select values between two specified values;  NOT BETWEEN - to select out of range values */

SELECT * from payment WHERE amount NOT BETWEEN 7 AND 10 ORDER BY customer_id ASC;

SELECT * FROM rental WHERE customer_id IN (1,2, 3) ORDER BY last_update DESC;

SELECT first_name, last_name FROM customer WHERE first_name like 'Ja%' ORDER BY last_name DESC;
/* % to search based on sequence; for eg. ya% means - anything begining with y */
/* %ya means anything ending with Ya. Also %ya% means check if any mame has er in it */
/* instead of %, if we use "_" search will be based on the character at that position '__P' means p in third position  */
/* if we want to search, ignoring case sensitivity, then use "ILIKE" instead of "LIKE" */

SELECT COUNT (amount) from payment where amount >= 5;

SELECT COUNT (first_name) from actor WHERE first_name ILIKE 'P%';

SELECT COUNT (DISTINCT District) from address;

SELECT DISTINCT district FROM address;

SELECT COUNT (rating) FROM film WHERE rating ='R' and replacement_cost BETWEEN 5 AND 15;

SELECT COUNT (title) FROM film WHERE title ILIKE '%TRUMAN%';

/* Min, Max, Avg, Round, Sum are the aggregate functions */
SELECT ROUND(AVG(amount),3) FROM payment;

SELECT ROUND(AVG(amount),2), customer_id FROM payment GROUP BY customer_id ORDER BY customer_id ASC;

SELECT rating, COUNT(*) FROM film GROUP BY rating;

SELECT rental_duration, COUNT(*) FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;

SELECT staff_id, SUM(amount), Count(payment) FROM Payment GROUP BY staff_id ORDER BY staff_id ASC;

SELECT rating, ROUND(AVG(replacement_cost),2) FROM film GROUP BY rating ORDER BY AVG(replacement_cost) ASC; 

SELECT customer_id, ROUND(SUM(amount),2) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;

SELECT rating, ROUND(AVG(rental_rate),2) FROM film WHERE rating IN ('R', 'G', 'PG') GROUP BY rating HAVING AVG(rental_rate) >=2.9 ORDER BY AVG(rental_rate) ASC;

SELECT customer_id, COUNT(*) FROM payment GROUP BY customer_id HAVING COUNT(payment) >=40 ORDER BY customer_id ASC;

SELECT rating, (AVG(rental_duration)) FROM film GROUP BY rating HAVING AVG(rental_duration) >=5 ORDER BY AVG(rental_duration) ASC;

SELECT customer_id, SUM(amount) FROM Payment WHERE Staff_id = '2' GROUP BY customer_id HAVING sum(amount)>= 110 ;

SELECT COUNT(film) FROM film WHERE title ILIKE 'J%';

SELECT First_name, Last_name, customer_id FROM customer WHERE first_name ILIKE 'E%' AND address_id < 500 ORDER BY customer_id DESC LIMIT 1;

SELECT title, Count(*) FROM film INNER JOIN inventory ON inventory.film_id = film.film_id WHERE store_id =1 GROUP BY title;

SELECT * , Language FROM film
INNER JOIN language on Language.language_id = film.language_id


