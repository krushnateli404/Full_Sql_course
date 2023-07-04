SELECT title ,unit,currency,revenue,
CASE 
   WHEN unit="Thousands" THEN ROUND( revenue/1000,2)
   WHEN unit="Billions" THEN ROUND(revenue*1000,2)
   ELSE revenue
END as revenue_mls
FROM movies m 
JOIN languages l ON m.language_id = l.language_id
JOIN financials f ON m.movie_id = f. movie_id
WHERE l.name="Hindi"
ORDER BY  revenue_mls
