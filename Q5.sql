-- Q5: Modify the query from Q4 to separate the orders not just by customer,
--  but also by date so they can see how much each customer is ordering on which date. 

SELECT
 c.customer_id AS "ID",
 c.customer_name AS "Name",
 sum(price) AS total, STR_TO_DATE(o.order_date,' %d/%m/%Y') as DateOnly
FROM customers c
JOIN customers_orders co ON co.customer_id = c.customer_id
JOIN orders o ON co.order_id = o.order_id
JOIN pizzas_orders po ON po.order_id = o.order_id
JOIN pizzas p ON p.pizza_id = po.pizza_id
group by DateOnly, c.customer_id
ORDER BY total DESC
;
