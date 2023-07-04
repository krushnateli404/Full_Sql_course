CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_sales_gross_for_customer`(
 c_code INT)
BEGIN
SELECT 
       s.date,
       SUM(s.sold_quantity*g.gross_price) as gross_price_total
FROM fact_sales_monthly s
JOIN fact_gross_price g
ON g.product_code = s.product_code and
   g.fiscal_year = get_fiscal_year(s.date)
WHERE customer_code = c_code
GROUP BY s.date 

ORDER BY s.date ASC;

END