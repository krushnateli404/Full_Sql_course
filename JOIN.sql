SELECT m.title , group_concat(a.name SEPARATOR " | ") as actors
FROM movies m
JOIN movie_actor ma ON 	m.movie_id = ma.movie_id
JOIN actors a ON ma.actor_id = a.actor_id
group by m.movie_id









SELECT a.name,GROUP_CONCAT(m.title SEPARATOR" | ") as num_movies,-
COUNT(m.title) as CNT
FROM actors a
JOIN movie_actor ma ON ma.actor_id = a.actor_id
JOIN movies m ON m.movie_id = ma.movie_id
GROUP BY a.actor_id
ORDER BY CNT DESC
