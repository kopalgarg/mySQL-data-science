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
# get customers with points >= 1000 <= 3000
SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;
# return custmers born between 1/1/1990 and 1/1/2000
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
# last name with B somewhere and first name with I
SELECT *
FROM customers 
WHERE last_name LIKE '%b%' AND first_name LIKE 'i%';
# first name exactly 4 characters long and last letter is y
SELECT * FROM customers 
WHERE first_name LIKE '___y';
-- get customers with address containing 
-- trail or avenue and phone number not ending with 9
SELECT * FROM customers
where (address LIKE '%trail%' OR 
	   address LIKE '%avenue%') AND 
       phone NOT LIKE '%9';
-- the last one with regular expressions
select * from customers
where (address regexp 'trail' or 
	   address regexp 'avenue') and 
       phone not like '%9';
# last name must end with field and first name starts with I
select * from customers where (last_name regexp 'field$' and first_name regexp '^I');
# last names with field as suffix or mac as prefix in last name 
select * from customers where last_name regexp 'field$|^mac';
# last names with letter e but before e we have any letter from a to  i
select * from customers where last_name regexp '[a-i]e' 















