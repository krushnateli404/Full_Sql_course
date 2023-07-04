SELECT c.market,SUM(sold_quantity) AS SLQ


FROM dim_customer c
JOIN  fact_sales_monthly s
ON s.customer_code = c.customer_code
group by c.market

CASE
    WHEN SLQ>5000000 THEN
	 SLQ = "GOLD"
	ELSE
	SLQ = "SILVER"
END as krushna


