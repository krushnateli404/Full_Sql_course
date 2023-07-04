-- select  the actors whose id are(101,110,121)
SELECT * FROM actors WHERE actor_id = ANY(SELECT actor_id FROM movie_actor

WHERE movie_id IN(101,110,121))

#select the querry imdb_rating is greater than marvel studios imdb_rating

select *from movies
WHERE imdb_rating=ANY(select imdb_rating from movies
where studio='Marvel Studios' )

SELECT *from movies WHERE imdb_rating > (SELECT min(imdb_rating) from movies
where studio='Marvel Studios')


select *from movies
WHERE imdb_rating=SOME(select imdb_rating from movies
where studio='Marvel Studios' )

select * from movies
WHERE imdb_rating>ALL(select max(imdb_rating) from movies
where studio='Marvel Studios' )

select * from movies
WHERE imdb_rating>aLL(select imdb_rating from movies
where studio='Marvel Studios' )