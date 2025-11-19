-- GLOBAL KPIs
SELECT
  COUNT(DISTINCT orders_id) AS nb_orders,
  COUNT(DISTINCT products_id) AS nb_products,
  COUNT(DISTINCT customers_id) AS nb_customers,
  SUM(turnover) AS sum_turnover,
  SUM(purchase_cost) AS sum_purchase_cost,
  SUM(qty) AS sum_qty
FROM `course15.gwz_sales`;

-- KPIs PER CATEGORY_1
SELECT 
  category_1,
  COUNT(DISTINCT orders_id) AS nb_orders,
  COUNT(DISTINCT products_id) AS nb_products,
  COUNT(DISTINCT customers_id) AS nb_customers,
  SUM(turnover) AS sum_turnover,
  SUM(purchase_cost) AS sum_purchase_cost,
  SUM(qty) AS sum_qty
FROM `course15.gwz_sales`
GROUP BY category_1;

-- KPIs PER CATEGORY_1 ORDERED BY TURNOVER
SELECT 
  category_1,
  COUNT(DISTINCT orders_id) AS nb_orders,
  COUNT(DISTINCT products_id) AS nb_products,
  COUNT(DISTINCT customers_id) AS nb_customers,
  SUM(turnover) AS sum_turnover,
  SUM(purchase_cost) AS sum_purchase_cost,
  SUM(qty) AS sum_qty
FROM `course15.gwz_sales`
GROUP BY category_1
ORDER BY sum_turnover DESC;
