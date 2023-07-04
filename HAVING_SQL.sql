-- Print relase years movies of greater than 2 movies releases
-- CORRECT
-- SELECT release_year ,COUNT(*) AS CNT
-- FROM movies
-- GROUP BY release_year
-- HAVING CNT>2

-- WRONG
SELECT release_year, COUNT(*) AS CNT
FROM movies
WHERE imdb_rating>2
GROUP BY release_year
HAVING imdb_rating>2

-- THE WAY OF RUN SQL CLAUSE--> SELECT-->FRROM-->WHERE-->GROUP BY-->HAVING-->ORDER BY

-- in HAVING  the given element wants present in SELECT coloumn
