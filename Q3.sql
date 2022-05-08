-- Q3: Populate your database with three orders

-- Order #1:
select 
o.order_id as "Order #", 
c.customer_name as "Name",
c.telephone as "Telephone",
o.order_date as "Date",
p.pizza_type as "Type" ,count(p.pizza_type) as "Quantity"
from customers c 
join customers_orders co on co.customer_id = c.customer_id
join orders o on co.order_id = o.order_id
join pizzas_orders po on po.order_id = o.order_id
join pizzas p on p.pizza_id = po.pizza_id
 where o.order_id = 1
group by(p.pizza_type);


-- Order #2
select 
o.order_id as "Order #", 
c.customer_name as "Name",
c.telephone as "Telephone",
o.order_date as "Date",
p.pizza_type as "Type" ,count(p.pizza_type) as "Quantity"
from customers c 
join customers_orders co on co.customer_id = c.customer_id
join orders o on co.order_id = o.order_id
join pizzas_orders po on po.order_id = o.order_id
join pizzas p on p.pizza_id = po.pizza_id
 where o.order_id = 2
group by(p.pizza_type);

-- Order #3
select 
o.order_id as "Order #", 
c.customer_name as "Name",
c.telephone as "Telephone",
o.order_date as "Date",
p.pizza_type as "Type" ,count(p.pizza_type) as "Quantity"
from customers c 
join customers_orders co on co.customer_id = c.customer_id
join orders o on co.order_id = o.order_id
join pizzas_orders po on po.order_id = o.order_id
join pizzas p on p.pizza_id = po.pizza_id
 where o.order_id = 3
group by(p.pizza_type);

-- Order #4
select 
o.order_id as "Order #", 
c.customer_name as "Name",
c.telephone as "Telephone",
o.order_date as "Date",
p.pizza_type as "Type" ,count(p.pizza_type) as "Quantity"
from customers c 
join customers_orders co on co.customer_id = c.customer_id
join orders o on co.order_id = o.order_id
join pizzas_orders po on po.order_id = o.order_id
join pizzas p on p.pizza_id = po.pizza_id
 where o.order_id = 4
group by(p.pizza_type);

-- Order #5
select 
o.order_id as "Order #", 
c.customer_name as "Name",
c.telephone as "Telephone",
o.order_date as "Date",
p.pizza_type as "Type" ,count(p.pizza_type) as "Quantity"
from customers c 
join customers_orders co on co.customer_id = c.customer_id
join orders o on co.order_id = o.order_id
join pizzas_orders po on po.order_id = o.order_id
join pizzas p on p.pizza_id = po.pizza_id
 where o.order_id = 5
group by(p.pizza_type);

-- Order #6
select 
o.order_id as "Order #", 
c.customer_name as "Name",
c.telephone as "Telephone",
o.order_date as "Date",
p.pizza_type as "Type" ,count(p.pizza_type) as "Quantity"
from customers c 
join customers_orders co on co.customer_id = c.customer_id
join orders o on co.order_id = o.order_id
join pizzas_orders po on po.order_id = o.order_id
join pizzas p on p.pizza_id = po.pizza_id
 where o.order_id = 6
group by(p.pizza_type);
