USE moviesdb;

SELECT m.movie_id, title, budget, revenue, currency, unit, (revenue-budget) AS profit
FROM movies m
JOIN financials f
ON m.movie_id = f.movie_id;

SELECT m.movie_id, title, budget, revenue, currency, unit, (revenue-budget) AS profit
FROM movies m
JOIN financials f
ON m.movie_id = f.movie_id
WHERE industry = "bollywood"
ORDER BY profit DESC;

SELECT m.movie_id, title, budget, revenue, currency, unit,
	CASE 
		WHEN unit="thousands" THEN ROUND((revenue-budget)/1000, 2)
        WHEN unit="billions" THEN ROUND((revenue-budget)*1000, 2)
        ELSE ROUND((revenue-budget), 2)
	END AS profit_mn
FROM movies m
JOIN financials f ON m.movie_id = f.movie_id
WHERE industry = "bollywood"
ORDER BY profit_mn DESC;