### Module: Gross Sales Report: Total Sales Amount
SELECT 
       s.date,
       SUM(s.sold_quantity*g.gross_price) as gross_price_total
FROM fact_sales_monthly s
JOIN fact_gross_price g
ON g.product_code = s.product_code and
   g.fiscal_year = get_fiscal_year(s.date)
WHERE customer_code = 90002002
GROUP BY s.date 

ORDER BY s.date ASC

SELECT 
            s.date, 
    	    SUM(ROUND(s.sold_quantity*g.gross_price,2)) as monthly_sales
	FROM fact_sales_monthly s
	JOIN fact_gross_price g
        ON g.fiscal_year=get_fiscal_year(s.date) AND g.product_code=s.product_code
	WHERE 
             customer_code=90002002
	GROUP BY date;