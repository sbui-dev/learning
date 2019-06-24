-- Database: owners_pets

-- DROP DATABASE owners_pets;

CREATE DATABASE owners_pets
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
-- Create owners table

CREATE TABLE owners (
	owner_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	city VARCHAR(30),
	state CHAR(2)
);

SELECT * FROM owners;

CREATE TABLE pets (
	pet_id SERIAL PRIMARY KEY,
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT,
	owner_id INT REFERENCES owners(owner_id)
);

SELECT * FROM pets;

ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE;

SELECT * FROM owners;

ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

-- insert data

INSERT INTO owners (first_name, last_name, city, state, email)
VALUES ('Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com'),
('Emma', 'Johnson', 'Seattle', 'WA', 'emjohnson@gmail.com'),
('John', 'Oliver', 'New York', 'NY', 'johnoliver@gmail.com'),
('Olivia', 'Brown', 'San Francisco', 'CA', 'oliviabrown@gmail.com'),
('Simon', 'Smith', 'Dallas', 'TX', 'sismith@gmail.com'),
(null, 'Maxwell', null, 'CA', 'lordmaxwell@gmail.com');

SELECT * FROM owners;

INSERT INTO pets (species, full_name, age, owner_id)
VALUES ('Dog', 'Rex', 6, 1), ('Rabbit', 'Fluffy', 2, 5), ('Cat', 'Tom', 8, 2),
('Mouse', 'Jerry', 2, 2), ('Dog', 'Biggles', 4, 1), ('Tortoise', 'Squirtle', 42, 3);

SELECT * FROM pets;

UPDATE pets
SET age = 3
WHERE full_name = 'Fluffy';

DELETE FROM owners
WHERE last_name = 'Maxwell';
