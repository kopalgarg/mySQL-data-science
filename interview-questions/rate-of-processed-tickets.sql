/*
Find the rate of processed tickets for each type
Link: https://platform.stratascratch.com/coding-question?id=9781&python=
*/

with true_freq as (
select type,count(processed) true_freq from facebook_complaints 
where processed = 'TRUE' group by type
),
false_freq as (
select type,count(processed) false_freq from facebook_complaints 
where processed = 'FALSE' group by type
)
select type,(true_freq/sum(true_freq+false_freq)) processed_rate from false_freq
inner join true_freq using(type)
group by type, true_freq, false_freq


