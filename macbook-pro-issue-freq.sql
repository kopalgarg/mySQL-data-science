/*
Count the number of user events performed by MacBookPro users
Link: https://platform.stratascratch.com/coding-question?id=9653&python=
*/
select event_name, count(event_name) from playbook_events
where device = 'macbook pro'
group by event_name
order by count desc 
