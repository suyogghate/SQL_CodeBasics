USE moviesdb;

SELECT m.movie_id, title, budget, revenue, currency, unit
FROM movies m
JOIN financials f
ON m.movie_id = f.movie_id;

# By default inner join

SELECT m.movie_id, title, budget, revenue, currency, unit
FROM movies m
LEFT JOIN financials f
ON m.movie_id = f.movie_id;

SELECT m.movie_id, title, budget, revenue, currency, unit
FROM movies m
RIGHT JOIN financials f
ON m.movie_id = f.movie_id;

SELECT f.movie_id, title, budget, revenue, currency, unit
FROM movies m
RIGHT JOIN financials f
ON m.movie_id = f.movie_id;

SELECT m.movie_id, title, budget, revenue, currency, unit
FROM movies m
LEFT JOIN financials f
ON m.movie_id = f.movie_id
UNION
SELECT f.movie_id, title, budget, revenue, currency, unit
FROM movies m
RIGHT JOIN financials f
ON m.movie_id = f.movie_id;

SELECT movie_id, title, budget, revenue, currency, unit
FROM movies m
LEFT JOIN financials f
USING (movie_id);

SELECT movie_id, title, budget, revenue, currency, unit
FROM movies m
RIGHT JOIN financials f
USING (movie_id);

-- 1. Show all the movies with their language names
SELECT m.title, l.name
FROM movies m
JOIN languages l
USING (language_id);

-- 2. Show all Telugu movie names (assuming you don't know the language id for Telugu)
SELECT m.title, l.name
FROM movies m
JOIN languages l
USING (language_id)
WHERE l.name = "Telugu";

-- 3. Show the language and number of movies released in that language-- 
SELECT l.name, COUNT(m.movie_id) as no_movies
FROM languages l
LEFT JOIN movies m 
USING (language_id)        
GROUP BY language_id;
	


 