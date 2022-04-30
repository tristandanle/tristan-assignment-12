--  Q2: Create your database based on your design in MySQL
--  For bonus points, make the script re-runnable using the “IF EXISTS” 

DROP DATABASE IF EXISTS pizza_restaurant; 
CREATE DATABASE pizza_restaurant;
USE pizza_restaurant;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS pizzas;
DROP TABLE IF EXISTS customers_orders;
DROP TABLE IF EXISTS pizzas_orders;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE customers (
customer_id INT NOT NULL,
customer_name VARCHAR(25),
telephone VARCHAR(15),
PRIMARY KEY(customer_id)
);

--  =============== Insert data into table customers =================
insert into customers(customer_id,  customer_name, telephone) 
values(1111,"Trevor Page","226-555-4982");

insert into customers(customer_id,  customer_name, telephone) 
values(2222,"John Doe","555-555-9498");

 
CREATE TABLE orders (
order_id INT NOT NULL AUTO_INCREMENT,
order_date VARCHAR(40),
PRIMARY KEY(order_id)
);

-- ================== Insert data into table orders ==================
  insert into orders(order_date) 
 values(date_format( '2014/10/9 9:47:00', '%e/%m/%Y %k:%i:%s %p'));

insert into orders(order_date) 
values(date_format( '2014/10/9 13:20:00', '%e/%m/%Y %k:%i:%s %p'));
  
insert into orders(order_date) 
values(date_format( '2014/10/9 9:47:00', '%e/%m/%Y %k:%i:%s %p'));


CREATE TABLE customers_orders(
order_id INT NOT NULL,
customer_id INT NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);


-- ================Insert data into table customers_orders =============
insert into customers_orders(order_id, customer_id)
values(1,1111);

insert into customers_orders(order_id, customer_id)
values(2,2222);

insert into customers_orders(order_id, customer_id)
values(3,1111);


CREATE TABLE pizzas (
pizza_id INT NOT NULL AUTO_INCREMENT,
pizza_type VARCHAR(50),
price DECIMAL(15,2) NOT NULL,
PRIMARY KEY(pizza_id)
);

-- ================== Insert data into table pizza ==================

insert into pizzas(pizza_type,price)
values("Pepperoni & Cheese", 7.99);

insert into pizzas(pizza_type,price)
values("Vegetarian", 9.99);

insert into pizzas(pizza_type,price)
values("Meat Lovers", 14.99);

insert into pizzas(pizza_type,price)
values("Hawaiian", 12.99);

CREATE TABLE pizzas_orders(
pizza_id INT NOT NULL,
order_id INT NOT NULL,
FOREIGN KEY (pizza_id) REFERENCES pizzas(pizza_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- ================== Insert data into table pizzas_orders ===============
-- order #1
insert into pizzas_orders(order_id, pizza_id)
values(1,1);
insert into pizzas_orders(order_id, pizza_id)
values(1,3);

-- order #2
insert into pizzas_orders(order_id, pizza_id)
values(2,2);
insert into pizzas_orders(order_id, pizza_id)
values(2,3);
insert into pizzas_orders(order_id, pizza_id)
values(2,3);

-- order #3
insert into pizzas_orders(order_id, pizza_id)
values(3,3);
insert into pizzas_orders(order_id, pizza_id)
values(3,4);



/* Select from tables  */
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM pizzas;
SELECT * FROM customers_orders;
SELECT * FROM pizzas_orders;






