# print all the years where more than 2 movies were released

SELECT release_year, count(*) as movies_count
FROM movies
GROUP BY release_year
HAVING movies_count > 2
ORDER BY movies_count desc;

# FROM --> WHERE --> GROUP BY --> HAVING --> ORDER BY
# GROUP BY and HAVING are often used together
# HAVING hsould be present in SELECT clause whereas WHERE can be used even if that column is not in SELECT clause.
