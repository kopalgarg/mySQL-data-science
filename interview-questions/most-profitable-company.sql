/*
Most Profitable Companies
Link: https://platform.stratascratch.com/coding-question?id=9680&python=
*/
with df as (
select company, profits, dense_rank() over(order by profits desc) from forbes_global_2010_2014

 order by profits desc
)

select company, profits from df 
where dense_rank <4
order by profits desc
