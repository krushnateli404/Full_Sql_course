CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `net_sells` AS
    SELECT 
        `net_postinv_sales`.`date` AS `date`,
        `net_postinv_sales`.`customer_code` AS `customer_code`,
        `net_postinv_sales`.`product` AS `product`,
        `net_postinv_sales`.`variant` AS `variant`,
        `net_postinv_sales`.`sold_quantity` AS `sold_quantity`,
        `net_postinv_sales`.`gross_price_total` AS `gross_price_total`,
        `net_postinv_sales`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct`,
        `net_postinv_sales`.`net_invoice_sells` AS `net_invoice_sells`,
        `net_postinv_sales`.`post_invoice_discount_pct` AS `post_invoice_discount_pct`,
        ((1 - `net_postinv_sales`.`post_invoice_discount_pct`) * `net_postinv_sales`.`net_invoice_sells`) AS `net_sales`
    FROM
        `net_postinv_sales`