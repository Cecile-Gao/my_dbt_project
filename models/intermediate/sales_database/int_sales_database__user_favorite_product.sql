SELECT
user_id,
product_id_y AS favorite_product_id
FROM {{ ref('int_sales_database__order_item') }}
GROUP BY
user_id,
product_id_y
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY user_id
  ORDER BY SUM(item_quantity_y) DESC
) = 1