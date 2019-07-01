-- grouping data

SELECT COUNT(movie_lang) FROM movies;

SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang;

SELECT movie_lang, AVG(movie_length) FROM movies
GROUP BY movie_lang;

SELECT movie_lang, age_certificate, AVG(movie_length) FROM movies
GROUP BY movie_lang, age_certificate;

SELECT movie_lang, age_certificate, AVG(movie_length) FROM movies
WHERE movie_length > 120
GROUP BY movie_lang, age_certificate;

SELECT movie_lang, MIN(movie_length), MAX(movie_length) FROM movies
WHERE age_certificate = '15'
GROUP BY movie_lang;

-- HAVING clauses

SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 1;

SELECT movie_lang, COUNT(movie_lang) FROM movies
WHERE movie_length > 120
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 1;

-- challenge answers

-- how many directors are there per nationality
SELECT nationality, COUNT(nationality) FROM directors
GROUP BY nationality;

-- the sum total movie length of each age certificate and movie language combination
SELECT movie_lang, age_certificate, SUM(movie_length) FROM movies
GROUP BY movie_lang, age_certificate
ORDER BY movie_lang, age_certificate;

-- return the movie languages which have a sum total movie length of over 500 minutes
SELECT movie_lang, SUM(movie_length) FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 500;