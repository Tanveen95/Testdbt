{% snapshot orders_snapshot %}

{{
    config(
      target_database='analytics',
      target_schema='mkmall_dw',
      unique_key='order_id',
      strategy='timestamp',
      updated_at='order_date',
    )
}}

select * from {{ ref('stg_orders')}}

{% endsnapshot %}