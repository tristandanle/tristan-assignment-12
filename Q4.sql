-- Q. 4 - Now the restaurant would like to know which customers are spending the most money at their establishment. 
--  Write a SQL query which will tell them how much money each individual customer has spent at their restaurant 
SELECT
c.customer_name AS "Name",
sum(price) AS total
FROM customers c 
JOIN customers_orders co on co.customer_id = c.customer_id
JOIN orders o on co.order_id = o.order_id
JOIN pizzas_orders po on po.order_id = o.order_id
JOIN pizzas p on p.pizza_id = po.pizza_id 
GROUP BY c.customer_id
ORDER BY total DESC
-- limit 1
;
