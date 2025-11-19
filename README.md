# 🛒 Greenweez Sales Analysis – SQL & BigQuery Project

This project analyzes the sales performance of **Greenweez**, a French e-commerce company specializing in organic and eco-friendly products.
The goal is to evaluate product category performance, customer purchasing behavior, and repeat purchase patterns using SQL queries executed in **Google BigQuery**.

## 🎯 Project Objectives
- Import and explore the `gwz_sales` dataset  
- Compute global sales KPIs using SQL aggregation  
- Analyze performance per `category_1`  
- Identify the top-selling hierarchical categories (`category_1 → category_2 → category_3`)  
- Evaluate customer behavior: one-time vs. repeat purchases  
- Compute *orders per customer*  
- Calculate average purchase cost & number of distinct products  
- Produce insights to support marketing & product decisions  

## 🗂 Dataset
The analysis uses the following table:

- **gwz_sales** — transactional dataset containing order, product, customer and category fields.

### Key Columns
- `orders_id` — Unique order identifier  
- `customers_id` — Unique customer identifier  
- `products_id` — Product identifier  
- `category_1`, `category_2`, `category_3` — Hierarchical product categories  
- `turnover` — Revenue for the order line  
- `purchase_cost` — Cost for Greenweez  
- `qty` — Quantity purchased  

## 🧮 A) Global Sales Aggregation
KPIs computed using SQL:
- Total number of orders (`COUNT DISTINCT orders_id`)  
- Total number of unique products (`COUNT DISTINCT products_id`)  
- Total number of unique customers (`COUNT DISTINCT customers_id`)  
- Total turnover (`SUM(turnover)`)  
- Total purchase cost (`SUM(purchase_cost)`)  
- Total quantity sold (`SUM(qty)`)  

KPIs were then computed again for each `category_1` and ranked by turnover.

## 📈 B) Top Category Identification
Hierarchical category analysis:
1. Identify the top `category_1` (highest turnover)  
2. Within that category, identify the top `category_2`  
3. Then identify the top `category_3`  

This exposes the strongest revenue-generating category paths.

## 🔁 C) One-Time vs. Repeat Purchases
To understand why categories are popular:
- Compute distinct orders (`nb_orders`)
- Compute distinct customers (`nb_customers`)
- Calculate **orders_per_customer = nb_orders / nb_customers**

High values = strong repeat purchase behavior  
Low values = mostly one-time buyers  

Categories were ordered by highest orders_per_customer.

## 🍼 D) Focus on “Bébé & Enfant”
For the top category:
- Average purchase cost (`AVG(purchase_cost)`)
- Number of distinct products (`COUNT DISTINCT products_id`)
- Breakdown by `category_2` and `category_3`

This reveals pricing structure, assortment depth, and customer demand.

## 🛠 Tools Used
- Google BigQuery  
- SQL (GROUP BY, ORDER BY, DISTINCT, aggregations)  
- Data Modeling  
- Customer behavior analysis  
- KPI engineering  

## 📁 Repository Structure
Project Root
- `README.md`  
- `sql/` (all SQL scripts)

sql/
- `01_global_aggregations.sql`
- `02_category_level_kpis.sql`
- `03_top_category_identification.sql`
- `04_repeat_purchase_analysis.sql`
- `05_orders_per_customer.sql`
- `06_bebe_enfant_analysis.sql`

## 📊 Key Insights
- **Bébé & Enfant** is the strongest category by turnover  
- Subcategories such as *Alimentation bébé* and *Lait de chèvre bébé* show high repurchase behavior  
- Orders-per-customer is a powerful loyalty indicator  
- Wide product variety and stable pricing drive consistent performance  

## 🧭 Final Summary
The Greenweez dataset highlights clear patterns:
- Strong dominance of Bébé & Enfant  
- Many subcategories show strong repeat-purchase dynamics  
- Category-level analysis supports targeted marketing  
- Pricing and product variety analysis strengthens assortment strategy  

## 🏷 Tags
SQL · BigQuery · E-commerce Analytics · Category Analysis · Repeat Purchase  
Marketing Insights · Customer Segmentation · Turnover Analysis
