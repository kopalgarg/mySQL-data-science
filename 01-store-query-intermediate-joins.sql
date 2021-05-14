/*
Null
order by
Inner joins
Full/right/left outer joins
*/
-- phone number is null
select * from customers where phone is null;
-- orders not shipped yet
select * from orders where shipped_date is null;
-- order by (ascending)
select * from orders order by order_id asc;
-- order by two col
select first_name, last_name, points/10 AS disc from customers order by state desc, points desc;
select *, unit_price * quantity as total_price from order_items where order_id = 2 order by total_price desc





