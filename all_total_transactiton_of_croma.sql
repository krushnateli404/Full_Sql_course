SELECT m.date, m.product_code,
       p.product,p.variant,m.sold_quantity,
       g.gross_price,
       ROUND(gross_price*sold_quantity,2) AS total_gross_price
FROM fact_sales_monthly m 
JOIN dim_product p
ON p.product_code = m.product_code
JOIN fact_gross_price g
ON m.product_code= g.product_code AND
   g.fiscal_year = get_fiscal_year(m.date)

WHERE get_fiscal_year(m.date)=2021