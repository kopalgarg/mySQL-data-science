/*
Popularity of Hack
Link: https://platform.stratascratch.com/coding-question?id=10061&python=
*/
select location, avg(popularity) from facebook_employees fe
inner join facebook_hack_survey fh on fe.id = fh.employee_id
group by location