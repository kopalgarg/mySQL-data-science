/*
Top 5 States With 5 Star Businesses
Link: https://platform.stratascratch.com/coding-question?id=10046&python=
*/
select state, count(stars) as n_businesses from yelp_business 
where stars = 5
group by state
order by n_businesses desc, state asc
limit 5