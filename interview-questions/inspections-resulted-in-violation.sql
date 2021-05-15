/*
Inspections That Resulted In Violations
Link: https://platform.stratascratch.com/coding-question?id=9728&python=
*/

select extract (year from inspection_date :: date) as year, count(violation_id) 
from sf_restaurant_health_violations 
where business_name = 'Roxanne Cafe' 
group by year