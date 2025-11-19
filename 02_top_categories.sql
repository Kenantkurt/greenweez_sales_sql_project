-- STEP 2
-- Identify the top category in category_1 based on turnover

SELECT 
  category_1, 
  SUM(turnover) AS sum_turnover
FROM `course15.gwz_sales`
GROUP BY category_1
ORDER BY sum_turnover DESC;


-- Within this top category (Bébé & Enfant), 
-- identify top category_2 and category_3 combinations.

SELECT 
  category_2,
  category_3,
  SUM(turnover) AS sum_turnover
FROM `course15.gwz_sales`
WHERE category_1 = "Bébé & Enfant"
GROUP BY category_2, category_3
ORDER BY sum_turnover DESC;
