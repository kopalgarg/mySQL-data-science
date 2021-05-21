/*
Highest cost orders
Link: https://platform.stratascratch.com/coding-question?id=9915&python=
*/
with total_order_cost as (
    select cust_id, order_date, sum(order_quantity*order_cost) total from orders o
    where o.order_date between '2019-02-01' and '2019-05-01'
    group by cust_id, order_date )
    
select first_name, total, order_date from total_order_cost o
    inner join customers c on o.cust_id=c.id
    where total=(select max(total) from total_order_cost)
    order by first_name
