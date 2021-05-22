/*
Game Play Analysis II
Link: https://towardsdatascience.com/4-tricky-sql-questions-for-data-scientists-in-2021-88ff6e456c77
*/

select player_id, device_id 
from Activity
where (player_id, event_date) IN (   
      select player_id, min(event_date) from Activity group by player_id 
 )