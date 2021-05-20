/*
Churro Activity Date

Link: https://platform.stratascratch.com/coding-question?id=9688&python=
*/
select * from los_angeles_restaurant_health_inspections
where score < 95 and facility_name ilike '%STREET CHURROS%'