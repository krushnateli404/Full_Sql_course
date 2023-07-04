CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_product_division__of_total_sold_qty`(
 in_fiscal_year INT,
 in_top_n INT)
BEGIN
WITH cte1 as(SELECT p.product, p.division,
       sum(sold_quantity)  as total_qty
       FROM fact_sales_monthly s
       JOIN dim_product p
       ON p.product_code = s.product_code 
       where fiscal_year =in_fiscal_year
       group by division,product),
       
       cte2 as(SELECT  
             *,
             dense_rank() over(partition by division order by total_qty) as drnk
       FROM cte1)
       SELECT * FROM cte2
       WHERE drnk<=in_top_n;

END