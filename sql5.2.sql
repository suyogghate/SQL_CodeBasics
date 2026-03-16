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
ON m.movie_id = f.movie_id
