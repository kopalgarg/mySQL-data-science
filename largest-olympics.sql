/*
Largest Olympics
Link: https://platform.stratascratch.com/coding-question?id=9942&python=
*/

-- solution 1
select distinct games, count(distinct name) as athletes_count from olympics_athletes_events
group by games
order by athletes_count desc
limit 1;

-- solution 2 
with a as
  (select games, count(distinct id) as athletes_count from olympics_athletes_events
   group by games
   order by athletes_count DESC)
select *
from a
where athletes_count =
    (select max(athletes_count)
     from a)