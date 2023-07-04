-- JOIN
SELECT 
   movies.movie_id, title,budget,currency,revenue
FROM movies 
JOIN financials
ON movies.movie_id = financials.movie_id

-- LEFT JOIN
SELECT 
   m.movie_id, title,budget,currency,revenue
FROM movies m
LEFT JOIN financials f
ON m.movie_id = f.movie_id

-- RIGHT JOIN
SELECT 
     f.movie_id,title,budget,revenue,currency
FROM movies m
RIGHT JOIN financials f
ON m.movie_id = f.movie_id

-- FULL JOIN
SELECT f.movie_id,title,budget,revenue,currency FROM movies m
RIGHT JOIN financials f
ON m.movie_id = f.movie_id

UNION

SELECT 
   m.movie_id, title,budget,currency,revenue
FROM movies m
LEFT JOIN financials f
ON m.movie_id = f.movie_id


-- INNER JOIN
SELECT movie_id,title,release_year,revenue,budget,currency
FROM movies
INNER JOIN financials
USING(movie_id)

