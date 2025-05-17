select
    order_id_y,
    sum(total_order_item_amount_y) as total_amount
from {{ ref('stg_sales_database__order_item') }}
group by order_id_y
having total_amount < 0