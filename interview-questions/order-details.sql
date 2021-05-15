/*
Order Details
Link: https://platform.stratascratch.com/coding-question?id=9913&python=
*/

select order_date, order_details, order_cost, first_name from customers c
inner join orders o on c.id = o.cust_id
where c.first_name like 'Eva' or c.first_name like 'Jill'
order by cust_id asc
