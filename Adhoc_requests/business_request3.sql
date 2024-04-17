select  dim_campaigns.campaign_name ,CONCAT(ROUND(SUM(fact_events.Totalrevenue_beforepromo)/1000000,0),'M') as `total_revenue(before_promotion)` ,CONCAT(ROUND(SUM(fact_events.Totalrevenue_afterpromo)/1000000,0),'M') as `total_revenue(after_promotion)`
from fact_events join dim_campaigns on dim_campaigns.campaign_id = fact_events.campaign_id
group by dim_campaigns.campaign_name ;

