USE sakila;

SELECT first_name, last_name FROM actor;

SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS 'Actor Name' FROM actor;

SELECT actor_id, first_name, last_name 
from actor 
where first_name = "Joe";

SELECT actor_id, first_name, last_name 
from actor 
where last_name LIKE "%GEN%";


-- 6A
select s.first_name, s.last_name, a.address
from staff s
join address a
on (s.address_id = a.address_id);


SELECT title from film
where title like "K%" 
or title like "Q%"
and language_id IN 
(
	SELECT language_id FROM language
	where name = "English"
)
 