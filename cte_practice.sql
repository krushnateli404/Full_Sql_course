select * FROM movies 
WHERE release_year>2000

 select movie_id,(revenue-budget)*100/budget as PROFIT
FROM financials 
HAVING PROFIT>500

with
x as (select * FROM movies 
WHERE release_year>2000)
y as ( select movie_id,(revenue-budget)*100/budget as PROFIT
FROM financials 
)
select 
x.title,x.industry="Hollywood",y.PROFIT,
FROM x
JOIN y
ON x.movie_id = y.movie_id
HAVING PROFIT>500





	with cte as (select title, release_year, (revenue-budget) as profit
			from movies m
			join financials f
			on m.movie_id=f.movie_id
			where release_year>2000 and industry="hollywood"
	)
	select * from cte where profit>500
		
