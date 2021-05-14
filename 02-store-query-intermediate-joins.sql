/*
Inner joins
Full/right/left outer joins
Implicit join syntax
*/
-- inner join and alias for names 
select order_id, first_name, o.customer_id, last_name from orders o inner join customers c
							on o.customer_id = c.customer_id;
select oi.order_id, oi.product_id, oi.quantity, oi.unit_price from order_items oi inner join products p on oi.product_id = p.product_id;
-- combine columns across multiple db
USE sql_inventory;
select * from sql_store.order_items oi join products p on oi.product_id = p.product_id;
-- join table with itself
use sql_hr;
-- join the name of employee with their manager
select e.employee_id, e.first_name as employee_first_name, m.first_name as manager_first_name from employees e join employees m on e.reports_to = m.employee_id;
-- join more than two tables
USE sql_store;
select o.order_id, o.order_date, c.first_name, c.last_name, os.name as status from orders o join customers c on 
								o.customer_id= c.customer_id 
					   join order_statuses os on 
								os.order_status_id = o.status;
use sql_invoicing;
select p.client_id, p.invoice_id, p.amount, p.date, pm.name from payments p join payment_methods pm on p.payment_method = pm.payment_method_id;
-- compound joint conditions 
use sql_store;
select * from order_items oi
join order_item_notes oin on (oi.order_id = oin.order_id and oi.product_id = oin.product_id);
-- implicit join syntax
select * from orders o, customers c
where o.customer_id = c.customer_id;
-- equivalent explicit join condition
select * from orders o
join customers c on o.customer_id = c.customer_id
-- outer join



















 







