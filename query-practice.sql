USE sql_store;
# update the state to VA for customer 1 
UPDATE sql_store . customers SET state = "VA" WHERE (customer_id = 1);
# sort customers from VA by points 
SELECT *
FROM customers
WHERE state = "VA"
ORDER BY points;
# get unique state names  
SELECT DISTINCT state FROM customers;
# select name, unit_price from products.
# create a alias with value unit_price * 1.1  
SELECT 
	`name`, 
    unit_price,
    unit_price*1.1 AS 'new_price'
FROM products;
# multi-condition WHERE statements 
SELECT *
FROM customers
WHERE 
	(points > 500 || # or OR
    birth_date < '1990-01-01') && # or AND
    state = "VA";
# get the orders placed before 2019
SELECT *
FROM orders
WHERE NOT order_date > '2019-1-1';
-- from the order_items table get the items
-- for order #6 where total_price > 30
SELECT * 
FROM order_items 
WHERE order_id = 6 && (unit_price * quantity) > 30;
# customers not in VA, GA, FL
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'GA', 'FL');
# return products with quantity in stock equal to 49, 38, 72
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);

 

