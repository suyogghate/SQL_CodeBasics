SELECT *
FROM movies
WHERE imdb_rating >= 9;

SELECT *
FROM movies
WHERE imdb_rating < 5;

SELECT *
FROM movies
WHERE imdb_rating >= 6 AND imdb_rating <= 8;

SELECT *
FROM movies
WHERE imdb_rating BETWEEN 6 AND 8;

SELECT *
FROM movies
WHERE release_year = 2022 or release_year = 2019 or release_year = 2018;

SELECT *
FROM movies
WHERE release_year IN (2019, 2018, 2022);

SELECT *
FROM movies
WHERE studio IN ('Marvel Studios', 'Zee Studios');

SELECT *
FROM movies
WHERE imdb_rating IS NULL;

SELECT *
FROM movies
WHERE imdb_rating IS NOT NULL;

SELECT *
FROM movies
WHERE industry = 'bollywood'
ORDER BY imdb_rating;

SELECT *
FROM movies
WHERE industry = 'bollywood'
ORDER BY imdb_rating DESC;

SELECT *
FROM movies
WHERE industry = 'bollywood'
ORDER BY imdb_rating DESC LIMIT 5;

SELECT *
FROM movies
WHERE industry = 'hollywood'
ORDER BY imdb_rating DESC LIMIT 5 OFFSET 1;

-- 1. Print all movies in the order of their release year (latest first)
SELECT *
FROM movies
ORDER BY release_year DESC;

-- 2. All movies released in the year 2022
SELECT *
FROM movies
WHERE release_year = 2022;

-- 3. Now all the movies released after 2020
SELECT *
FROM movies
WHERE release_year > 2020;

-- 4. All movies after the year 2020 that have more than 8 rating
SELECT *
FROM movies
WHERE release_year > 2020 AND imdb_rating > 8;

-- 5. Select all movies that are by Marvel studios and Hombale Films
SELECT *
FROM movies
WHERE studio IN ('Marvel studios', 'Hombale Films');

-- 6. Select all THOR movies by their release year
select title, release_year from movies 
where title like '%thor%' order by release_year asc;

-- 7. Select all movies that are not from Marvel Studios
SELECT *
FROM movies
WHERE studio NOT IN ('Marvel Studios');