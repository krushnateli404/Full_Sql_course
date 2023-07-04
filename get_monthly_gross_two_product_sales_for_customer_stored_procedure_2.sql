CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_two_product_sales_for_customer`(
in_customer_code TEXT)
BEGIN
SELECT 
       s.date,
       SUM(s.sold_quantity*g.gross_price) as gross_price_total
FROM fact_sales_monthly s
JOIN fact_gross_price g
ON g.product_code = s.product_code and
   g.fiscal_year = get_fiscal_year(s.date)
WHERE find_in_set(s.customer_code,in_customer_code)>0
GROUP BY s.date 

ORDER BY s.date ASC;

END