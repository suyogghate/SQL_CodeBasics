USE moviesdb;

SELECT MAX(imdb_rating)
FROM movies
WHERE industry = 'Bollywood';

SELECT MIN(imdb_rating)
FROM movies
WHERE industry = 'Bollywood';

SELECT ROUND(AVG(imdb_rating), 2)
FROM movies
WHERE studio = 'Marvel Studios';

SELECT MIN(imdb_rating) as min_rating, MAX(imdb_rating) as max_rating, ROUND(AVG(imdb_rating), 2) AS avg_rating
FROM movies
WHERE studio = 'Marvel Studios';

SELECT industry, COUNT(*)
FROM movies
GROUP BY industry;

SELECT studio, COUNT(*) as count
FROM movies
GROUP BY studio
ORDER BY count DESC;

SELECT studio, count(studio) as count, round(avg(imdb_rating), 1) as avg_rating
FROM movies
WHERE studio != ""
GROUP BY studio
ORDER BY avg_rating DESC;

-- 1. How many movies were released between 2015 and 2022
SELECT count(*)
FROM movies
WHERE release_year between 2015 AND 2022;

-- 2. Print the max and min movie release year
SELECT MAX(release_year)
FROM movies;

SELECT MIN(release_year)
FROM movies;

-- 3. Print each year along with the number of movies released in that year, starting from the most recent year
SELECT release_year, COUNT(*) as count
FROM movies
GROUP BY release_year
ORDER BY release_year DESC;



 

