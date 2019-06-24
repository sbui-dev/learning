-- Simple select statements

SELECT * FROM directors;

SELECT first_name FROM directors;

SELECT first_name, last_name FROM directors;

SELECT first_name, last_name, nationality FROM directors;

-- Select with where clause

SELECT * FROM movies
WHERE age_certificate = '15';

SELECT * FROM movies
WHERE age_certificate = '15'
AND movie_lang = 'Chinese';

SELECT * FROM movies
WHERE age_certificate = '15'
OR movie_lang = 'Chinese';

SELECT * FROM movies
WHERE movie_lang = 'English'
AND age_certificate = '15'
AND director_id = 27;

-- using logical operators

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length >= 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length < 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length <= 120;

SELECT * FROM movies
WHERE release_date < '1999-12-31';

SELECT * FROM movies
WHERE movie_lang <= 'English';

-- challenge answers

-- select movie name and release date of every movie
SELECT movie_name, release_date FROM movies;

-- select first and last name of all american directors
SELECT first_name, last_name FROM directors
WHERE nationality = 'American';

-- select all male actors born after 1st of jan 1970
SELECT * FROM actors
WHERE gender = 'M' AND date_of_birth > '1970-1-1';

-- select names of all movies over 90 minutes long and movie language is english
SELECT movie_name FROM movies
WHERE movie_length > 90 AND movie_lang = 'English';