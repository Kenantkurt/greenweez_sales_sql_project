
# 🛒 Greenweez Sales Analysis – SQL & BigQuery

![SQL](https://img.shields.io/badge/Tool-SQL-blue)
![BigQuery](https://img.shields.io/badge/Platform-Google%20BigQuery-red)
![DataAnalysis](https://img.shields.io/badge/Skill-Data%20Analysis-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

This project analyzes **Greenweez's e-commerce sales data**, focusing on revenue performance, product category segmentation, customer behavior, and repeat-purchase metrics.  
All analysis was performed using **SQL queries** executed in **Google BigQuery**.

---

### 📊 What I Did
- Explored and validated the `gwz_sales` dataset  
- Computed global KPIs (orders, customers, products, turnover, purchase cost, quantity)  
- Ranked `category_1` groups by total turnover  
- Identified the top-selling hierarchical categories (`category_1 → category_2 → category_3`)  
- Analyzed customer behavior (distinct orders vs. distinct customers)  
- Calculated **orders per customer** to measure repeat-purchase intensity  
- Calculated average purchase cost and distinct product count inside the top-performing category  
- Organized all SQL queries into clean, step-based files  

---

## ### 🛠 Tools & Methods
**Tools:**  
- Google BigQuery  
- SQL  

**Techniques:**  
- Aggregations (COUNT, SUM, AVG)  
- DISTINCT metrics  
- GROUP BY hierarchical segmentation  
- ORDER BY ranking  
- Category-based filtering  
- KPI calculation & behavioral metrics  

---

## ### 📈 Key Insights
- **Bébé & Enfant** is the strongest category by turnover  
- Within this category, several subcategories drive most of the revenue  
- Repeat-purchase behavior was high in certain baby-care segments  
- Orders-per-customer revealed strong loyalty indicators  
- Average purchase cost & product variety analysis highlighted strategic pricing clusters  
- Hierarchical category analysis allows laser-focused marketing opportunities

  ### 📌 Final Results

- **Top-performing main category:**  
  *Bébé & Enfant* generated the highest turnover among all `category_1` groups, making it the strongest revenue driver in the catalog.

- **Best-performing hierarchical subcategories:**  
  Within *Bébé & Enfant*, combinations such as **Alimentation bébé → Lait de chèvre bébé** showed exceptionally high turnover, making them the key contributors to category revenue.

- **Customer behavior insights:**  
  Several subcategories displayed a **high orders-per-customer ratio**, indicating strong repeat-purchase patterns and suggesting high customer satisfaction and product loyalty.

- **Pricing and product variety findings:**  
  The *Bébé & Enfant* category also showed:
  - Stable average purchase costs across subcategories  
  - A wide variety of distinct products  
  These factors contribute to consistent sales and a healthy product mix.

- **Overall conclusion:**  
  Revenue concentration in a few high-performing subcategories, combined with strong repeat-purchase behavior, indicates clear opportunities for targeted marketing, promotional strategy, and product assortment optimization.


---

## ### 🧾 Conclusion
This project demonstrates how transactional sales data can be transformed into **clear, structured insights**, helping teams understand product popularity, customer loyalty, and pricing strategy effectiveness.  
The analysis supports smarter marketing decisions, targeted campaigns, and stronger assortment planning.

---

## ### 🔗 SQL Files
All analysis steps are stored in the following SQL files:

- `01_sales_aggregation.sql`  
- `02_top_categories.sql`  
- `03_repeat_purchase_analysis.sql`  
- `04_bebe_enfant_analysis.sql`  

---

## ### 🔖 Tags
`#SQL` `#BigQuery` `#EcommerceAnalytics` `#CategoryAnalysis`  
`#CustomerBehavior` `#RepeatPurchase` `#KPI` `#DataAnalysis`
