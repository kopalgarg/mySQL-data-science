/*

display last 2 rows

*/
-- solution 1
with df as(
	select *, rank() over(order by payment_id) as rownum
from payments
)
select *
from df
where rownum > (select max(rownum) from df)-2;

-- solution 2
with df as(
	select *, rank() over(order by payment_id) as rownum
from payments
)
select * from df d1
left join df d2 using(rownum)
where d2.rownum > (select max(rownum) from df d3) - 2 

