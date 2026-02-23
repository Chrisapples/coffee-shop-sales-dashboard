CREATE OR REPLACE TABLE
  `project-2d3d3fa9-88c0-4101-827.coffee_sales.t_day_hour_heatmap` AS

SELECT
  day_name,
  day_of_week_num,
  hour_of_day,
  COUNT(DISTINCT transaction_id) AS total_transactions,
  SUM(revenue) AS total_revenue
FROM `project-2d3d3fa9-88c0-4101-827.coffee_sales.v_transactions_clean`
GROUP BY day_name, day_of_week_num, hour_of_day
ORDER BY day_of_week_num, hour_of_day;