SELECT oi.order_id_y,
    order_item_id_y, 
    total_order_item_amount_y,
    item_quantity_y,
    product_id_y,
    o.user_id,
    o.order_status,
    o.order_created_at,
    o.order_approved_at
FROM
{{ ref('stg_sales_database__order_item') }} AS oi
INNER JOIN
{{ ref('stg_sales_database__order') }} o
ON oi.order_id_y = o.order_id