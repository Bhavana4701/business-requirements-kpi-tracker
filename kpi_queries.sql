-- KPI Query 1: Monthly on-time delivery rate
SELECT 
  MONTH(delivery_date) AS month,
  COUNT(*) AS total_orders,
  SUM(CASE WHEN delivered_on_time = 1 THEN 1 ELSE 0 END) AS on_time,
  ROUND(100.0 * SUM(CASE WHEN delivered_on_time = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS on_time_rate
FROM orders
GROUP BY MONTH(delivery_date)
ORDER BY month;

-- KPI Query 2: Department efficiency score
SELECT 
  department,
  AVG(efficiency_score) AS avg_efficiency,
  MIN(efficiency_score) AS min_score,
  MAX(efficiency_score) AS max_score
FROM performance_metrics
GROUP BY department
ORDER BY avg_efficiency DESC;

-- KPI Query 3: Trend analysis - monthly revenue vs target
SELECT 
  month,
  actual_revenue,
  target_revenue,
  ROUND(100.0 * actual_revenue / target_revenue, 2) AS achievement_pct
FROM revenue_tracking
ORDER BY month;

-- KPI Query 4: Identify teams missing KPI targets
SELECT 
  team_name,
  kpi_name,
  target_value,
  actual_value,
  CASE WHEN actual_value < target_value THEN 'Below Target' ELSE 'On Track' END AS status
FROM kpi_tracker
WHERE actual_value < target_value
ORDER BY team_name;

-- KPI Query 5: Onboarding time reduction tracking
SELECT 
  MONTH(start_date) AS month,
  AVG(onboarding_days) AS avg_onboarding_days
FROM employee_onboarding
GROUP BY MONTH(start_date)
ORDER BY month;
