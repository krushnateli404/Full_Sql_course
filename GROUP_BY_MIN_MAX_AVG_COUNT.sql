-- SELECT ROUND(AVG(imdb_rating),2) as Avg_imdb_rating,
--        MIN(imdb_rating) as min_rating,
--        MAX(imdb_rating) as max_rating
-- FROM movies WHERE industry='bollywood'


-- SELECT 
--      industry,COUNT(*) as cnt,
--      ROUND(AVG(imdb_rating),2) as avg_rating
-- FROM movies
-- GROUP BY industry

-- SELECT studio,COUNT(*) AS CNT

-- FROM movies
-- WHERE studio!=""
-- GROUP BY studio
-- ORDER BY CNT desc


SELECT studio,COUNT(industry) as CNT,
ROUND(AVG(imdb_rating),2) as avg_rating
FROM movies
GROUP BY studio
ORDER BY avg_rating
     





