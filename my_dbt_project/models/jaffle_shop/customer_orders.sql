select
    o.id as order_id
    , order_date
    , status as order_status
    , first_name
    , last_name

from {{ source('jaffle_shop', 'jaffle_shop_orders') }} o
join {{ source('jaffle_shop', 'jaffle_shop_customers') }} c
on
o.user_id = c.id