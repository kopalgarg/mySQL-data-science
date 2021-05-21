/*
Host Popularity Rental Prices
Link: https://platform.stratascratch.com/coding-question?id=9632&python=
*/
-- solution 1
with a as (
select 5 as place, 'Trending Up' as host_pop_rating,min(price) as min_price, avg(price) as avg_price, max(price) as max_price from airbnb_host_searches
where number_of_reviews between 6 and 15
union
select 4 as place, 'Rising' as host_pop_rating,min(price)as min_price, avg(price) as avg_price, max(price) as max_price from airbnb_host_searches
where number_of_reviews >=1 and number_of_reviews <=5
union
select 3 as place, 'Popular' as host_pop_rating,min(price)as min_price, avg(price) as avg_price, max(price) as max_price from airbnb_host_searches
where number_of_reviews between 16 and 40
union
select 2 as place, 'Hot' as host_pop_rating,min(price)as min_price, avg(price) as avg_price, max(price) as max_price from airbnb_host_searches
where number_of_reviews >40
union
select 1 as place, 'New' as host_pop_rating,min(price)as min_price, avg(price) as avg_price, max(price) as max_price from airbnb_host_searches
where number_of_reviews =0
)
select host_pop_rating, min_price, avg_price, max_price from a
order by place 
-- solution 2
with hosts as 
    (
        select concat(price, room_type, host_since, zipcode, number_of_reviews) as host_id, number_of_reviews, price
        from airbnb_host_searches group by price, room_type, host_since, zipcode,number_of_reviews
    
    
    )

select host_popularity as host_pop_rating,
    min(price) as min_price, avg(price) AS avg_price, max(price) AS max_price
from (
        select case
                    when number_of_reviews = 0 then 'New'
                    when number_of_reviews between 1 and 5 then 'Rising'
                    when number_of_reviews between 6 and 15 then 'Trending Up'
                    when number_of_reviews between 16 and 40 then 'Popular'
                    when number_of_reviews > 40 then 'Hot'
                end 
                as host_popularity, price from hosts
        
    ) a
group by host_pop_rating