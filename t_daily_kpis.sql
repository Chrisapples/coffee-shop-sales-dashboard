CREATE OR REPLACE TABLE
  `project-2d3d3fa9-88c0-4101-827.coffee_sales.t_daily_kpis` AS

SELECT
  transaction_date,
  SUM(revenue) AS total_revenue,
  SUM(transaction_qty) AS total_units,
  COUNT(DISTINCT transaction_id) AS total_transactions,
  SAFE_DIVIDE(SUM(revenue), COUNT(DISTINCT transaction_id)) AS avg_order_value
FROM `project-2d3d3fa9-88c0-4101-827.coffee_sales.v_transactions_clean`
GROUP BY transaction_date
ORDER BY transaction_date;