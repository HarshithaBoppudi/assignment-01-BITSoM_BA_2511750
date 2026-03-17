use rdbms_project;
/* Q1*/
SELECT 
    c.customer_id,
    c.customer_name,
    c.customer_city,
    SUM(o.quantity * p.unit_price) AS total_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Products p ON o.product_id = p.product_id
WHERE c.customer_city = 'Mumbai'
GROUP BY c.customer_id, c.customer_name, c.customer_city;

/*Q2*/
SELECT 
    p.product_id,
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 3;

/* Q3*/
SELECT 
    s.sales_rep_id,
    s.sales_rep_name,
    COUNT(DISTINCT o.customer_id) AS unique_customers_handled
FROM SalesReps s
JOIN Orders o ON s.sales_rep_id = o.sales_rep_id
GROUP BY s.sales_rep_id, s.sales_rep_name
ORDER BY unique_customers_handled DESC;

/*Q4*/

select
	o.order_id,
    o.customer_id,
    o.product_id,
    (o.quantity*p.unit_price) as total_value
from orders o
join products p on o.product_id=p.product_id
where (o.quantity*p.unit_price) > 10000
order by total_value desc;

/*Q5*/
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.unit_price
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;



	







