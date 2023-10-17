use sakila;

-- Q1
SELECT * FROM sakila.actor;

-- Q2
select last_name FROM sakila.actor
where first_name = 'John';

-- Q3
select * from actor
where last_name = 'Neeson';

-- Q4
select * from actor
where actor_id % 10 = 0;

-- Q5
select description from film
where film_id = 100;

-- Q6
select * from film
where rating = 'R';

-- Q7
select * from film
where rating != 'R';

-- Q8
select * from film
order by length
limit 10;

-- Q9
select * from film
where length = (select max(length) from sakila.film);

-- Q10

select *
from film 
WHERE special_features LIKE '%deleted scenes%';


-- Q11
SELECT last_name, COUNT(*)
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1
ORDER BY last_name DESC ;



-- Q12
SELECT last_name, COUNT(*)
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

-- Q13


SELECT * 
FROM actor 
WHERE actor_id =
(SELECT actor_id
FROM film_actor
GROUP BY actor_id
ORDER BY COUNT(*) desc
LIMIT 1);

-- Q14
select release_year
from film 
where title = 'Academy Dinosaur';

-- q15
SELECT AVG(length)
FROM film;

-- Q16
select category.name,AVG(film.length)
FROM film 
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category 
on category.category_id = film_category.category_id
GROUP BY category.name
ORDER BY AVG(film.length) ;


-- Q17

SELECT * 
FROM film 
WHERE description LIKE '%robot%';

-- Q18
select release_year, COUNT(*)
FROM film 
GROUP BY release_year
having release_year = 2010;


-- Q19


select film.title
FROM film 
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category 
on category.category_id = film_category.category_id
WHERE category.name = 'Horror';

-- Q20
select first_name, last_name
FROM staff 
WHERE staff_id = 2;

-- Q21
select film.title
FROM film 
JOIN film_actor
ON film_actor.film_id = film.film_id
JOIN actor 
on actor.actor_id = film_actor.actor_id
WHERE actor.last_name = 'Costner' and actor.first_name = 'Fred';


-- Q22

SELECT COUNT(DISTINCT country)
FROM country;


-- Q23
select name 
FROM language 
ORDER BY name DESC;

-- Q24--

select first_name,last_name
FROM actor 
WHERE last_name LIKE '%son'
order by first_name ;

-- Q25
select category.name,count(*)
FROM film 
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category 
on category.category_id = film_category.category_id
gROUP BY category.category_id;





