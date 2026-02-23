CREATE OR REPLACE TABLE
  `project-2d3d3fa9-88c0-4101-827.coffee_sales.t_category_kpis` AS

SELECT
  product_category,
  SUM(revenue) AS total_revenue,
  SUM(transaction_qty) AS total_units,
  COUNT(DISTINCT transaction_id) AS total_transactions
FROM `project-2d3d3fa9-88c0-4101-827.coffee_sales.v_transactions_clean`
GROUP BY product_category
ORDER BY total_revenue DESC;