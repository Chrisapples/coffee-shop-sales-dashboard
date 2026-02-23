CREATE OR REPLACE TABLE
  `project-2d3d3fa9-88c0-4101-827.coffee_sales.t_top_products` AS

SELECT
  product_detail,
  product_category,
  product_type,
  SUM(revenue) AS total_revenue,
  SUM(transaction_qty) AS total_units,
  COUNT(DISTINCT transaction_id) AS total_transactions
FROM `project-2d3d3fa9-88c0-4101-827.coffee_sales.v_transactions_clean`
GROUP BY product_detail, product_category, product_type
ORDER BY total_revenue DESC
LIMIT 20;