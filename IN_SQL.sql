-- SELECT *FROM movies WHERE release_year=2022 OR release_year=2020 OR release_year=2019
-- Here we can use IN opraters

-- SELECT *FROM movies WHERE release_year IN(2019,2022,2020)
SELECT *FROM movies WHERE studio IN ('Marvel Studios','Zee Studios')