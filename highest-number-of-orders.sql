/*
Highest Number Of Orders
Link: https://platform.stratascratch.com/coding-question?id=9909&python=
*/
with a as (

    select first_name,count(order_quantity) as total_orders from customers c
    inner join orders o on c.id = o.cust_id
    group by first_name
    order by total_orders desc, first_name desc

)
    
select * from a 
where total_orders = (select max(total_orders) from a)