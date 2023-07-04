CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sales_bradge`(
IN in_market VARCHAR(45),
IN in_fiscal_year YEAR,
OUT out_bradge VARCHAR(45)
)
BEGIN

DECLARE qty int default 0;


SELECT c.market,SUM(s.sold_quantity) INTO qty


FROM  fact_sales_monthly s
JOIN  dim_customer c
ON s.customer_code = c.customer_code
WHERE get_fiscal_year(s.date) = in_fiscal_year and
      c.market = in_market
group by c.market;

IF qty>50000000 THEN
  SET out_bradge = 'GOLD';
ELSE 
   SET out_bradge = 'SILVER';
END IF;


END