-- STEP 4
-- For the top category_1 ("Bébé & Enfant"),
-- calculate average purchase cost and number of distinct products
-- per subcategory (category_2 + category_3)

SELECT
  category_2,
  category_3,
  COUNT(DISTINCT products_id) AS nb_of_products,
  ROUND(AVG(purchase_cost), 2) AS avg_purchase_cost
FROM `course15.gwz_sales`
WHERE category_1 = "Bébé & Enfant"
GROUP BY category_2, category_3
ORDER BY avg_purchase_cost DESC;
