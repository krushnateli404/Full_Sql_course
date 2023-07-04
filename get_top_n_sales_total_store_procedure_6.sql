CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_net_sales_total`(
   in_fiscal_year INT,
   
   in_top_of_n INT)
BEGIN
SELECT 
     c.market,
     SUM(ROUND(net_sales/1000000,2)) AS net_sales_MLN_total
    
FROM gdb041.net_sells n
JOIN dim_customer c 
ON 
	c.customer_code = n.customer_code
JOIN fact_sales_monthly s
ON s.customer_code = n.customer_code 
    

WHERE s.fiscal_year = in_fiscal_year
GROUP BY c.market
ORDER BY net_sales_MLN_total DESC
LIMIT in_top_of_n
;

END