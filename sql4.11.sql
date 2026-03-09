SELECT YEAR(CURDATE());

SELECT *, YEAR(CURDATE()) - birth_year AS age
FROM actors;

SELECT *, (revenue-budget) AS profit
FROM financials;

# IF(condition, true, false)
SELECT *, IF (currency='USD', revenue*91, revenue) AS revenue_inr
FROM financials;

# CASE
SELECT *,
	CASE 
		WHEN unit='thousands' THEN revenue/1000
        WHEN unit='billions' THEN revenue*1000
        -- WHEN unit='millions' THEN revenue 
        ELSE revenue
	END as revenue_mn
FROM financials;

# 1. Print profit % for all the movies
SELECT *, (revenue-budget) AS profit, (revenue-budget/budget)*100 AS profit_pct
FROM financials;
