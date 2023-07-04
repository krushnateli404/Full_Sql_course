-- QUESTION 1:
-- SELECT *FROM movies
-- ORDER BY release_year DESC

-- QUESTION 2:
-- SELECT *FROM movies 
-- WHERE release_year IN(2022)

-- QUESTION 3:
-- SELECT *FROM movies 
-- WHERE release_year BETWEEN 2021 AND 2022

-- QUESTION 4:
-- SELECT *FROM movies
-- WHERE  release_year>2020 AND imdb_rating>8

-- SELECT *FROM movies
-- WHERE studio IN('Hombale Films','Marvel Studios')

-- QUESTION 6:
SELECT title ,release_year FROM movies 
WHERE  title LIKE'%Thor%' ORDER BY release_year ASC

-- QUESTION:7
-- SELECT *FROM movies 
-- WHERE studio!='Marvel Studios'

