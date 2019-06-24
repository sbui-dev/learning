-- Database: test

-- DROP DATABASE test;

CREATE DATABASE test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Create table

CREATE TABLE example (
	example_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(80) UNIQUE,
	nationality CHAR(3),
	age INT
);

SELECT * FROM example;

-- Inserting data into database

INSERT INTO example (first_name, last_name, email, nationality, age)
VALUES ('David', 'Mitchell', 'dmitch@gmail.com', 'GBR', 43);

INSERT INTO example (first_name, last_name, email, nationality, age)
VALUES('Emily', 'Watson', 'ewatson@gmail.com', 'USA', 29), ('Theo', 'Scott', 'tscott@gmail.com', 'AUS', 33),
('Emily', 'Smith', 'esmith@gmail.com', 'GBR', 29), ('Jim', 'Burr', 'jburr@gmail.com', 'USA', 54);

-- Update data in a table

UPDATE example
SET email = 'davidmitchell@gmail.com'
WHERE example_id = 1;

SELECT * FROM example;

UPDATE example
SET nationality = 'CAN'
WHERE nationality = 'USA';

UPDATE example
SET first_name = 'James', age = 55
WHERE example_id = 5;

-- Delete data from table

DELETE FROM example
WHERE example_id = 2;

DELETE FROM example
WHERE nationality = 'GBR';

DELETE FROM example;