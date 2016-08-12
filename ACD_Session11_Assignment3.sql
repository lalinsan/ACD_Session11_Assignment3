/*
/*
 * Student: Eduardo Aguirre
 * Session 11
 * Assignment 1
 * 
a) Display first name using the HAVING clause to filter the result set to only those records of
first name column that have a count of greater than two (i.e. HAVING COUNT(*) > 2).
b) Selects all records from the actor table in the sakila database where the value of
the first name column is equal to ADAM
c) Selects all records from the actor table in the sakila database, then orders them by
the first name field in ascending order.
d) Selected all actors' first names from the actor table and grouped them by the first name.
*/

/*a)*/
/*Query Record*/
SELECT * 
FROM sakila.actor
ORDER BY first_name;

/*Group and Filter using Having Clause*/
SELECT first_name, count(1) 
FROM sakila.actor
GROUP BY first_Name
HAVING COUNT(*)>2;

/*b)*/
/*Query Record*/
SELECT * 
FROM sakila.actor
WHERE first_name='ADAM';

/*c)*/
/*Query Record*/
SELECT * 
FROM sakila.actor
ORDER BY first_name ASC;

/*d)*/
/*Query Record*/
SELECT first_name 
FROM sakila.actor
GROUP BY first_Name
