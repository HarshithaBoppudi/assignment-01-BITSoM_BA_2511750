use retail_dw;

-- Q1: 
SELECT 
    p.category,
    d.month,
    d.year,
    SUM(f.total_sales) AS total_revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY p.category, d.year, d.month
ORDER BY d.year, d.month, p.category;

-- Q2: 
SELECT 
    s.store_name,
    s.store_city,
    SUM(f.total_sales) AS total_revenue
FROM fact_sales f
JOIN dim_store s ON f.store_id = s.store_id
GROUP BY s.store_name, s.store_city
ORDER BY total_revenue DESC
LIMIT 2;

-- Q3:
SELECT 
    d.year,
    d.month,
    SUM(f.total_sales) AS monthly_sales
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;