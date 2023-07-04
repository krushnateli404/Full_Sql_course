WITH actor_age as (
     SELECT 
      name AS actor_name,
      YEAR(curdate())-birth_year as age
      FROM actors
      ) 
      
select actor_name,age FROM actor_age
WHERE age>70 AND age<85

#	passed some argument in this
WITH actor_age(actor_name,age) as (
     SELECT 
      name AS x,
      YEAR(curdate())-birth_year as y
      FROM actors
      ) 
      
select actor_name,age FROM actor_age
WHERE age>70 AND age<85



with 
SELECT  movie_id,(revenue-budget)*100/budget as PROFIT
  FROM financials
  having PROFIT>500
  
  SELECT title,imdb_rating FROM movies WHERE imdb_rating > (SELECT AVG(imdb_rating) FROM movies)
  
 
 
 #BY using subquerry
  SELECT X.movie_id,X.PROFIT,Y.imdb_rating,Y.title FROM (SELECT  *,(revenue-budget)*100/budget as PROFIT
  FROM financials
  )X
  JOIN(SELECT * FROM movies WHERE imdb_rating > (SELECT AVG(imdb_rating) FROM movies)) Y
ON X.movie_id = Y.movie_id
WHERE PROFIT>=500



#BY Using CTE

with
X as ( SELECT  *,(revenue-budget)*100/budget as PROFIT
  FROM financials),
Y as (SELECT * FROM movies WHERE imdb_rating > (SELECT AVG(imdb_rating) FROM movies))
SELECT X.movie_id,X.PROFIT,Y.imdb_rating,Y.title 
FROM X
JOIN Y
ON X.movie_id = Y.movie_id
WHERE PROFIT>=500
