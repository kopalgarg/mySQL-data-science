/*
Popularity Percentage
Link: https://platform.stratascratch.com/coding/10284-popularity-percentage?python=
*/
with A as (
    select user2 from facebook_friends
    union all
    select user1 from facebook_friends
)
select user2, count(user2)/(select count(distinct user2) from A)::decimal*100 as popularity from A
group by user2
order by user2 asc