/*
Number Of Units Per Nationality
Link: https://platform.stratascratch.com/coding-question?id=10156&python=
*/
select nationality, count(unit_id) as apartment_count from airbnb_hosts hosts
left join airbnb_units units using(host_id)
where age < 30 and unit_type = 'Apartment'
group by nationality
