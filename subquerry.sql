-- Print  value in List
SELECT * FROM movies
WHERE imdb_rating in ((select max(imdb_rating) FROM movies),
					(select min(imdb_rating) FROM movies))
                    
-- Print single value
SELECT * FROM movies 
WHERE imdb_rating= (select max(imdb_rating) FROM movies)

-- if we know the value
SELECT *FROM movies
WHERE imdb_rating in (1.9,9.3)

SELECT *FROM(SELECT name, YEAR(curdate())-birth_year as age
  from actors ) as Age_of_actors
 WHERE age>70 AND age<85
                    


