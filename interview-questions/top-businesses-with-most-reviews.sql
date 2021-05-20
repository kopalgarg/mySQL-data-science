/*
Top Businesses With Most Reviews
Link: https://platform.stratascratch.com/coding-question?id=10048&python=
*/
-- solution 1
with df as(
    select business_id, rank() over(order by review_count desc) ranks from yelp_business 
)
select name, review_count from df 
join yelp_business on (df.business_id = yelp_business.business_id)
where ranks <= 5
order by review_count desc;

-- solution 2
select name,review_count from yelp_business
order by review_count desc
limit 5
