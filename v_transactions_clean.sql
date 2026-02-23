SELECT
  transaction_id,
  transaction_date,
  transaction_time,

  EXTRACT(DAYOFWEEK FROM transaction_date) AS day_of_week_num,   -- 1=Sunday ... 7=Saturday
  FORMAT_DATE('%A', transaction_date) AS day_name,
  EXTRACT(HOUR FROM transaction_time) AS hour_of_day,

  store_id,
  store_location,
  product_id,
  product_category,
  product_type,
  product_detail,

  unit_price,
  transaction_qty,

  (unit_price * transaction_qty) AS revenue
FROM `project-2d3d3fa9-88c0-4101-827.coffee_sales.coffee_transactions`
WHERE transaction_id IS NOT NULL
  AND transaction_date IS NOT NULL
  AND transaction_time IS NOT NULL
  AND transaction_qty IS NOT NULL
  AND unit_price IS NOT NULL
  AND transaction_qty > 0
  AND unit_price >= 0