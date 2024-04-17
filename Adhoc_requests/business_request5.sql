SELECT 
    product_name,
    category,
      `IR%`,
    rankorder
FROM (
    SELECT 
        dim_products.product_name,
        dim_products.category,
     CONCAT(ROUND(SUM((fact_events.Totalrevenue_afterpromo) - (fact_events.Totalrevenue_beforepromo))/SUM(fact_events.Totalrevenue_beforepromo)*100,0),"%") AS `IR%`,
        ROW_NUMBER() OVER (ORDER BY ROUND(SUM((fact_events.Totalrevenue_afterpromo) - (fact_events.Totalrevenue_beforepromo))/SUM(fact_events.Totalrevenue_beforepromo)*100,0) desc) AS rankorder
    FROM 
        fact_events
    JOIN 
        dim_products ON fact_events.product_code = dim_products.product_code
    JOIN 
        dim_campaigns ON dim_campaigns.campaign_id = fact_events.campaign_id
    GROUP BY 
        dim_products.product_name, dim_products.category
) AS ranked_results
WHERE 
    rankorder <= 5
 ;