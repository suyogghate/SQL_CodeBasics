USE moviesdb;

SELECT title, industry FROM movies;

SELECT * FROM movies;

SELECT * 
FROM movies 
WHERE industry = 'Bollywood';

SELECT count(*)
FROM movies 
WHERE industry = 'Hollywood';

SELECT distinct
industry FROM movies;

SELECT *
FROM movies
WHERE title LIKE '%AMERICA%';

SELECT *
FROM movies
WHERE studio = '';

--  Print all movie titles and release year for all Marvel Studios movies.
SELECT title, release_year
FROM movies
WHERE studio = 'Marvel Studios';
 
-- Print all movies that have Avenger in their name.
SELECT *
FROM movies
WHERE title LIKE '%Avenger%';

-- Print the year when the movie "The Godfather" was released.
SELECT release_year
FROM movies
WHERE title = 'The Godfather';

-- Print all distinct movie studios in the Bollywood industry.
SELECT distinct
studio FROM
movies
WHERE industry = 'Bollywood';
