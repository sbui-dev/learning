-- Dealing with NULL values

SELECT * FROM actors
WHERE date_of_birth IS NULL;

SELECT * FROM movie_revenues
WHERE domestic_takings IS NOT NULL
ORDER BY domestic_takings DESC;

SELECT * FROM movie_revenues
WHERE international_takings IS NULL;

-- Setting a column name alias

SELECT last_name AS surname FROM directors;

SELECT last_name AS surname FROM directors
WHERE last_name LIKE 'A%'
ORDER BY surname;

-- using concatenate

SELECT 'concat' || 'together' AS new_string;

SELECT 'concat' || ' ' || 'together' AS new_string;

SELECT CONCAT(first_name, last_name) AS full_name FROM actors;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM actors;

SELECT CONCAT_WS(' ', first_name, last_name, date_of_birth) AS full_name FROM actors;

-- challenge answers

-- return top 3 movies with the highest international takings
SELECT * FROM movie_revenues
WHERE international_takings IS NOT NULL
ORDER BY international_takings DESC
LIMIT 3;

-- concatenate the first and last names of the directors, separated by a space, and call this new column full_name
SELECT CONCAT_WS(' ', first_name, last_name) AS full_name FROM directors;

-- return the actors with missing first names or missing date of births
SELECT * FROM actors
WHERE first_name IS NULL OR date_of_birth IS NULL;