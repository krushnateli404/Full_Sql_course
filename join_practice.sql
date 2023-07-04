SELECT 
   m.title,l.name
FROM movies m

JOIN languages l

USING(language_id)


SELECT title 
FROM movies m
LEFT JOIN languages l
ON m.language_id = l.language_id
WHERE l.name="Telugu"

SELECT title	FROM movies m 
   LEFT JOIN languages l 
   ON m.language_id=l.language_id
   WHERE l.name="Telugu"

SELECT m.title, COUNT(name) AS CNT
FROM movies m
JOIN langauges l
ON m.langauge_id = l.language_id
GROUP BY title

SELECT 
            l.name, 
            COUNT(m.movie_id) as no_movies
	FROM languages l
	LEFT JOIN movies m USING (language_id)        
	GROUP BY language_id
	ORDER BY no_movies DESC;