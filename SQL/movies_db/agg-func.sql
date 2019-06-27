-- aggregate function : count

SELECT COUNT(*) FROM movie_revenues;

SELECT COUNT(international_takings) FROM movie_revenues;

SELECT COUNT(*) FROM movies
WHERE movie_lang = 'English';

-- sum

SELECT SUM(domestic_takings) FROM movie_revenues;

SELECT SUM(domestic_takings) FROM movie_revenues
WHERE domestic_takings > 100.0;

SELECT SUM(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

-- min and max

SELECT MAX(movie_length) FROM movies;
SELECT MIN(movie_length) FROM movies;

SELECT MIN(movie_length) FROM movies
WHERE movie_lang = 'Japanese';

SELECT MAX(release_date) FROM movies;
SELECT MIN(release_date) FROM movies;

SELECT MAX(movie_name) FROM movies;
SELECT MIN(movie_name) FROM movies;

-- average

SELECT AVG(movie_length) FROM movies;

SELECT AVG(movie_length) FROM movies
WHERE age_certificate = '18';

-- challenge answers

-- count number of actors born after 1st of jan 1970
SELECT COUNT(*) FROM actors
WHERE date_of_birth > '1970-01-01';

-- highest and lowest domestic takings for a movie
SELECT MAX(domestic_takings) FROM movie_revenues;
SELECT MIN(domestic_takings) FROM movie_revenues;

-- sum total length of movies rated 15
SELECT SUM(movie_length) FROM movies
WHERE age_certificate = '15';

-- how many japanese directors are in directors table
SELECT COUNT(*) FROM directors
WHERE nationality = 'Japanese';

-- average movie length for chinese movies
SELECT AVG(movie_length) FROM movies
WHERE movie_lang = 'Chinese';



