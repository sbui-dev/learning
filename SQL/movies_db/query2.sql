-- using IN and NOT IN

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John');

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John', 'Peter');

SELECT first_name, last_name FROM actors
WHERE first_name NOT IN ('Bruce', 'John', 'Peter');

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id IN (2,3,4,5,6,8);

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id NOT IN (2,3,4,5,6,8);

-- using LIKE with % and _ for pattern recognition

SELECT * FROM actors
WHERE first_name LIKE 'P%';

SELECT * FROM actors
WHERE first_name LIKE 'Pe_';

SELECT * FROM actors
WHERE first_name LIKE '%r';

SELECT * FROM actors
WHERE first_name LIKE '%r%';

-- selecting data where a column is between 2 values

SELECT * FROM movies;

SELECT movie_name, release_date FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_lang BETWEEN 'E' AND 'P';

-- challenge answers

-- select movie names and movie languages of all movies with a movie language of english, spanish, or korean
SELECT movie_name, movie_lang FROM movies
WHERE movie_lang IN ('English', 'Spanish', 'Korean');

-- select first and last name of actors who last name begins with m and were born between 01/01/1940 and 31/12/1969
SELECT first_name, last_name FROM actors
WHERE last_name LIKE 'M%' AND date_of_birth BETWEEN '1940-01-01' AND '1969-12-31';

-- select first and last name of the directors with nationality of british, french, german born between 01/01/1950 and 31/12/1980
SELECT first_name, last_name FROM directors
WHERE nationality IN ('British', 'French', 'German') AND date_of_birth BETWEEN '1950-01-01' AND '1980-12-31';

