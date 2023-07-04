SELECT m.movie_id,title,budget,revenue,currency,unit,
CASE 
   WHEN unit="Thousands" THEN (revenue-budget)/1000 
   WHEN unit ="Billions" THEN (revenue-budget)*1000
   ELSE revenue-budget
END as PROFIT_mls
FROM movies m
JOIN financials f ON m.movie_id = f.movie_id
ORDER BY PROFIT_mls DESC