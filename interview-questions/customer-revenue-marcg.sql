/*
Customer Revenue In March
Link: https://platform.stratascratch.com/coding-question?id=9782&python=
*/
select cust_id, sum(order_quantity * order_cost) as revenue from orders
where order_date between '2019-03-01' and '2019-03-31'
group by cust_id
order by revenue desc