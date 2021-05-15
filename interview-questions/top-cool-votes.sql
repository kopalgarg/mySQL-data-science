/*
Top Cool Votes
Link: https://platform.stratascratch.com/coding-question?id=10060&python=
*/
select business_name, review_text 
from yelp_reviews
where cool = (select max(cool) from yelp_reviews)
