SELECT *,CURDATE() AS current_year FROM actors

SELECT *,YEAR(CURDATE()) AS current_year FROM actors -- we can replace YEAR to DAY,MONTH

SELECT *,YEAR(CURDATE())-birth_year FROM actors