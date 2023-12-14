{{
    config(
            materialized='view'
    )  
}}
select
        c_custkey as customer_id,
        c_name as name,
        c_address as address,
        c_phone as phone_number,
        c_acctbal as account_balance,
        c_mktsegment as market_segment,
        n_name as nation,
        c_comment as comment,
        current_timestamp() as updated_time
from {{source('src','customers') }} as c 
join {{source('src','nations') }} as n
on c.c_nationkey=n.n_nationkey
where c_mktsegment= '{{ var('mkts')}}'