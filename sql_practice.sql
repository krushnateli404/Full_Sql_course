SELECT release_year,COUNT(release_year) as CNT
FROM movies 
WHERE release_year  BETWEEN 2015 AND 2022
GROUP BY release_year


SELECT MAX(release_year) FROM movies 
SELECT MIN(release_year) FROM movies


SELECT release_year,COUNT(*) AS CNT
FROM movies
GROUP BY release_year

-- QUESTION:1
 select 
        count(*)
   from movies 
   where release_year between 2015 and 2022


-- QUESTION:2

select 
      min(release_year) as min_year,
      max(release_year) as max_year
   from movies

-- QUESTION:3
select release_year, count(*) as movies_count 
   from movies group by release_year order by release_year desc
