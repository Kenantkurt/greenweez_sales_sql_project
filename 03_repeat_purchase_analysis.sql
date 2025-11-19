-- STEP 3
-- Count distinct customers and distinct orders for each category_2 + category_3
-- Only inside the top category_1 = "Bébé & Enfant"

SELECT 
  category_2,
  category_3,
  COUNT(DISTINCT customers_id) AS nb_customers,
  COUNT(DISTINCT orders_id) AS nb_orders
FROM `course15.gwz_sales`
WHERE category_1 = "Bébé & Enfant"
GROUP BY category_2, category_3;


-- Compute number of orders per customer
-- This indicates whether customers repurchase frequently

SELECT 
  category_2,
  category_3,
  COUNT(DISTINCT orders_id) AS nb_orders,
  COUNT(DISTINCT customers_id) AS nb_customers,
  COUNT(DISTINCT orders_id) / COUNT(DISTINCT customers_id) AS orders_per_customer
FROM `course15.gwz_sales`
WHERE category_1 = "Bébé & Enfant"
GROUP BY category_2, category_3
ORDER BY orders_per_customer DESC;
