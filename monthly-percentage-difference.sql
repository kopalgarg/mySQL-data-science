/*
Monthly Percentage Difference
Link: https://platform.stratascratch.com/coding/10319-monthly-percentage-difference?python=
*/
-- output columns: created at, value

select 
    to_char(created_at::date, 'YYYY-MM') as year_month,
    round(((sum(value) - (lag(sum(value), 1) over (w)))/
    lag(sum(value), 1) over (w))*100, 2)as rev_diff
from sf_transactions
group by year_month
-- window alias
window w as (order by to_char(created_at::date, 'YYYY-MM'))
order by year_month asc
