{{
    config(
            materialized='view'
    )  
}}
select
customer_id,
c.name,
address,
phone_number,
account_balance,
market_segment,
n.name as nation,
r.name as region,
c.comment
from {{ ref('stg_customers') }} as c 
join {{ ref('stg_nations') }} as n
on c.nation_id=n.nation_id
join {{ ref('stg_regions') }} as r
on n.region_id=r.region_id