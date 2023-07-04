WITH cte1 as(SELECT p.product, p.division,
       sum(sold_quantity)  as total_qty
       FROM fact_sales_monthly s
       JOIN dim_product p
       ON p.product_code = s.product_code 
       where fiscal_year =2021
       group by division,product),
       
       cte2 as(SELECT  
             *,
             dense_rank() over(partition by division order by total_qty) as drnk
       FROM cte1)
       SELECT * FROM cte2
       WHERE drnk<=2
       