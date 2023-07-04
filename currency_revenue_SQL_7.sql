SELECT *,(revenue-budget) as Profit  FROM 

USD-->INR ratio is 77

SELECT *,
IF (currency='USD',revenue*77,revenue) as revenue_inr
FROM financials

-- CONEVERTE CURRENCY
SELECT*,
CASE
   WHEN unit="Billions" THEN revenue*1000
   WHEN unit="Thousands" THEN revenue/1000
   ELSE revenue
END as currency_mil
FROM financials


SELECT distinct unit FROM financials