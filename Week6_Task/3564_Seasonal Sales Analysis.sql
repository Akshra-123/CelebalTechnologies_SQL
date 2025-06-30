SELECT EXTRACT(YEAR FROM order_date) AS year,
       EXTRACT(QUARTER FROM order_date) AS quarter,
       SUM(sales) AS total_sales
FROM Sales
GROUP BY year, quarter
ORDER BY year, quarter;
