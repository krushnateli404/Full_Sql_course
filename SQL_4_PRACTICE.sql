-- select title,release_year FROM movies

-- Question 1:
-- SELECT title,studio FROM movies WHERE studio LIKE'%marvel%' 

-- Question 2:
-- SELECT *FROM movies WHERE title LIKE'%avenger%'

-- Question 3:
-- SELECT release_year,title FROM movies WHERE title LIKE'%The Godfather'


-- QUESTION 4:
SELECT distinct studio,industry FROM movies WHERE industry LIKE'bollywood'