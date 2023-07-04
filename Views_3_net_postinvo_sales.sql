CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `net_postinv_sales` AS
    SELECT 
        `p`.`date` AS `date`,
        `p`.`customer_code` AS `customer_code`,
        `p`.`product` AS `product`,
        `p`.`variant` AS `variant`,
        `p`.`sold_quantity` AS `sold_quantity`,
        `p`.`gross_price_total` AS `gross_price_total`,
        `p`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct`,
        (`p`.`gross_price_total` - (`p`.`gross_price_total` * `p`.`pre_invoice_discount_pct`)) AS `net_invoice_sells`,
        (`po`.`discounts_pct` + `po`.`other_deductions_pct`) AS `post_invoice_discount_pct`
    FROM
        (`sells_preinvo_discount` `p`
        JOIN `fact_post_invoice_deductions` `po` ON (((`p`.`date` = `po`.`date`)
            AND (`p`.`product_code` = `po`.`product_code`)
            AND (`p`.`customer_code` = `po`.`customer_code`))))