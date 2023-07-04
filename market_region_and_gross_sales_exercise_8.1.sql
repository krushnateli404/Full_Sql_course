with cte1 as (SELECT 
       g.market,p.division,round(sum(gross_price_total)/1000000,2) as gross_sales_mln
FROM gross_sales g
JOIN dim_product p
    ON p.product_code = g.product_code and
       p.product = g.product
       where g.fiscal_year = 2021
       group by market
       )
       ,
  cte2 as (SELECT *,
       dense_rank() over(partition by division,market order by  gross_sales_mln  desc) as drnk
       
        
FROM cte1
)

select * from cte2
where drnk<=2



with cte1 as (
		select
			c.market,
            c.region,
            
			
			round(sum(gross_price_total)/1000000,2)  as gross_sales_mln
			from gross_sales s
			join dim_customer c
			on c.customer_code=s.customer_code
			where fiscal_year=2021
            group by market,region
            order by gross_sales_mln desc
			
			
		),
		cte2 as (
			select *,
			dense_rank() over(partition by region order by gross_sales_mln desc) as drnk
			from cte1
		)
	select * from cte2 where drnk<=2
