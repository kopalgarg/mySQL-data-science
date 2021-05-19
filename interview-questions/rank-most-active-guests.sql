/*
Ranking Most Active Guests
Link: https://platform.stratascratch.com/coding-question?id=10159&python=
*/
-- solution 1: using dense rank
with df as(
select id_guest,sum(n_messages) as total_messages
from airbnb_contacts
group by id_guest

)
select dense_rank() over(order by total_messages desc), id_guest, total_messages 
from df
order by total_messages desc