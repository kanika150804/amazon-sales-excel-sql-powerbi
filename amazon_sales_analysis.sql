CREATE DATABASE amazon_db;
USE amazon_db;

SELECT *
FROM amazon_sales;

SELECT COUNT(*) AS total_orders
FROM amazon_sales;

SELECT SUM(revenue) AS total_revenue
FROM amazon_sales;

SELECT 
    discount_bucket,
    SUM(revenue) AS revenue_by_discount
FROM amazon_sales
GROUP BY discount_bucket;

SELECT 
    discount_bucket,
    COUNT(*) AS orders_count
FROM amazon_sales
GROUP BY discount_bucket;

SELECT 
    AVG(discount_percentage_number) AS avg_discount
FROM amazon_sales;

SELECT 
    discount_bucket,
    AVG(discount_percentage_number) AS avg_discount
FROM amazon_sales
GROUP BY discount_bucket;

SELECT 
    product_name,
    SUM(revenue) AS total_revenue
FROM amazon_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

SELECT 
    product_name,
    discount_percentage_number
FROM amazon_sales
WHERE discount_percentage_number > 50;

