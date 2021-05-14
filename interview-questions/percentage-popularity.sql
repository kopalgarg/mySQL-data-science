/*
Popularity percentage
Link: https://platform.stratascratch.com/coding-question?id=10284&python=
*/

-- combine user1 and user2 cols from db - save as A
with A as (
    select user2 from facebook_friends
    union all
    select user1 from facebook_friends
)
-- from A, select 2 cols:
--          list of users - user2
--          number of times user2 occurs / total distinct users in A
select user2, count(user2)/(select count(distinct user2) from A)::decimal*100 as popularity from A

group by user2

order by user2 asc