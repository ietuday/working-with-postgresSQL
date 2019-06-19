CREATE TABLE movies
(
	movie_name VARCHAR(200),
	movie_year INTEGER,
	country VARCHAR(50),
	genere VARCHAR NOT NULL,
	PRIMARY KEY (movie_name, movie_year)
);


INSERT INTO movies VALUES('The Dark Knigh', 2008, 'USA', 'Action, Superhero'), ('The Green Mile', 1999, 'USA', 'Mystic, Drama')

SELECT * FROM movies

UPDATE movies 
SET movie_name = 'The Dark Knight'
WHERE movie_year = 2008


ALTER TABLE movies
ALTER COLUMN country SET DEFAULT 'USA';


INSERT INTO movies VALUES('test', 1, DEFAULT, 'test');

SELECT * 
FROM movies

ALTER TABLE movies
ADD director VARCHAR(150);


ALTER TABLE table_name
ALTER COLUMN column_name SET 

ALTER TABLE table_name
ADD/ ALTER/ DELETE 

UPDATE movies
SET director='Christopher Nolan'
WHERE LOWER(movie_name) = 'intersteller';

