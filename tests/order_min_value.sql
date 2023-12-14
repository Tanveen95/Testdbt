{{
config(
    schema='newschema',
    store_failures=true)
}}
    with orders as (     
    select * from stg_orders
) 

select order_id, sum(total_price_usd) ordertotal 
from orders 
group by 1 
having (ordertotal<=900)

