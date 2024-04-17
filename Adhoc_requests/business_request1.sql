 select distinct dim_products.product_name,fact_events.promo_type,fact_events.base_price from dim_products 
  join fact_events on fact_events.product_code=dim_products.product_code
 where fact_events.base_price>500 and fact_events.promo_type = "BOGOF";
 
 