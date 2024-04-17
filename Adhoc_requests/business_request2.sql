select city,count(store_id) as stores from dim_stores
group by city
order by count(store_id) desc;