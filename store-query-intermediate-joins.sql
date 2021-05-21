/*
Inner joins
Full/right/left outer joins
Implicit join syntax
Using 
Union
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
join customers c on o.customer_id = c.customer_id;
-- outer join
# only customers who have an order in the system - inner join
select c.customer_id, c.first_name, o.order_id from customers c join orders o on o.customer_id = c.customer_id order by c.customer_id;
# all customers - outer join (left join - all customers from left table (o) are returned
select c.customer_id, c.first_name, o.order_id from customers c left join orders o on o.customer_id = c.customer_id order by c.customer_id;
-- exercise
select p.product_id, p.name, oi.quantity from products p left join order_items oi on p.product_id = oi.product_id;
-- outer join between multiple tables
select c.customer_id, c.first_name, o.order_id, sh.shipper_id, sh.name 'shipper'
from customers c 
left join orders o on o.customer_id = c.customer_id 
left join shippers sh on o.shipper_id = sh.shipper_id 
order by c.customer_id;
-- exercise
select o.order_date, o.order_id, c.first_name, sh.shipper_id, sh.name, os.name
from orders o
join customers c on o.customer_id = c.customer_id
left join shippers sh on o.shipper_id = sh.shipper_id
left join order_statuses os on o.status = os.order_status_id
order by os.name;
-- self outer join
use sql_hr;
select e.first_name as employee, m.first_name as manager
from employees e 
left join employees m on e.reports_to = m.employee_id;
-- using clause - works if same col name across tables 
use sql_store;
select o.order_id, c.first_name, s.name shipper
from orders o
join customers c 
	-- on o.customer_id = c.customer_id
	using (customer_id)
left join shippers s
	using (shipper_id);
select * from order_items oi left join order_item_notes oin 
using (order_id, product_id);
-- exercise
use sql_invoicing;
select p.date, p.amount, c.name, pm.name
from payments p
left join clients c using (client_id)
left join payment_methods pm on pm.payment_method_id = p.payment_method;
-- union
use sql_store;
select order_id, order_date, 'active' as status
from orders
where order_date >= '2019-01-01'
union
select order_id, order_date, 'archive' as status
from orders
where order_date < '2019-01-01';
select first_name 
from customers 
union
select name 
from shippers;
-- exercise 
select customer_id, first_name, points, 'bronze' as type 
from customers
where points < 2000
union 
select customer_id, first_name, points, 'silver' as type 
from customers
where points >= 2000 and points <= 3000 
union 
select customer_id, first_name, points, 'gold' as type 
from customers
where points > 3000
order by first_name











 







