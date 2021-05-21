/*
Reviews of Categories
Link: https://platform.stratascratch.com/coding-question?id=10049&python=
*/

with top as (
    select review_count, unnest(string_to_array(categories, ';')) as category from yelp_business
)

select category,sum(review_count) as sum from top
group by category
order by sum desc