CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_market_region_of_gross_net_sales`(

in_fiscal_year INT,
in_top_n INT
)
BEGIN
with cte1 as (
		select
			c.market,
            c.region,
            
			
			round(sum(gross_price_total)/1000000,2)  as gross_sales_mln
			from gross_sales s
			join dim_customer c
			on c.customer_code=s.customer_code
			where fiscal_year=in_fiscal_year
            group by market,region
            order by gross_sales_mln desc
			
			
		),
		cte2 as (
			select *,
			dense_rank() over(partition by region order by gross_sales_mln desc) as drnk
			from cte1
		)
	select * from cte2 where drnk<=in_top_n;


END