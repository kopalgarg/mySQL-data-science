/*
Inner joins
Full/right/left outer joins
*/
-- inner join and alias for names 
select order_id, first_name, o.customer_id, last_name from orders o inner join customers c
							on o.customer_id = c.customer_id;
select oi.order_id, oi.product_id, oi.quantity, oi.unit_price from order_items oi inner join products p on oi.product_id = p.product_id
-- combine columns across multiple db


