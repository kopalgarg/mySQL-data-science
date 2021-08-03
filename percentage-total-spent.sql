/*
Percentage Of Total Spend
Link: https://platform.stratascratch.com/coding/9899-percentage-of-total-spend?python=
*/
select 
    c.first_name,
    o.order_details,
    round(o.order_cost/sum(o.order_cost) over (partition by first_name)::float * 100, 2) as percentage_total_spent
from orders o
join customers c 
on c.id = o.cust_id
order by c.first_name

