SELECT 
    category,
    `ISU%`,
    rankorder
FROM 
 (SELECT
  dim_products.category,
  concat(round(SUM(fact_events.`quantity_sold(after_promo)`-fact_events.`quantity_sold(before_promo)`)/sum(fact_events.`quantity_sold(before_promo)`)*100,0),"%") AS `ISU%`,
  Rank() OVER (  ORDER BY round(SUM(fact_events.`quantity_sold(after_promo)`-fact_events.`quantity_sold(before_promo)`)/sum(fact_events.`quantity_sold(before_promo)`)*100,0)  desc) AS rankorder
FROM fact_events
JOIN dim_products ON fact_events.product_code = dim_products.product_code
JOIN dim_campaigns ON dim_campaigns.campaign_id = fact_events.campaign_id
WHERE dim_campaigns.campaign_name = "Diwali"
GROUP BY dim_products.category
) AS ranked_results   
;