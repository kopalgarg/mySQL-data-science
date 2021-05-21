/*
Matching hosts and guests based on gender and nationality
Link: https://platform.stratascratch.com/coding-question?id=10078&python=
*/
select h.host_id, g.guest_id 
from airbnb_hosts h
inner join airbnb_guests g on h.gender = g.gender and 
      h.nationality = g.nationality