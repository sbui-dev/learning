-- ordering results

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
ORDER BY actor_id DESC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC;

-- limiting the number of records

SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 5 OFFSET 5;

-- using FETCH

SELECT movie_id, movie_name FROM movies
FETCH FIRST 1 ROW ONLY;

SELECT movie_id, movie_name FROM movies
FETCH FIRST 10 ROW ONLY;

SELECT movie_id, movie_name FROM movies
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY;

-- distinct values

SELECT DISTINCT movie_lang, age_certificate FROM movies
ORDER BY movie_lang;

-- challenge answers

-- select american directors ordered from oldest to youngest

SELECT * FROM directors
WHERE nationality = 'American'
ORDER BY date_of_birth;

-- return the distinct nationalities from the directors table
SELECT DISTINCT nationality FROM directors;

-- return the first names, last names, and date of births of the 10 youngest female actors
SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
LIMIT 10;




