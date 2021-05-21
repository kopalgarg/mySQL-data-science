/*
Number Of Bathrooms And Bedrooms
Link: https://platform.stratascratch.com/coding-question?id=9622&python=
*/

select city, property_type, avg(bathrooms), avg(bedrooms) 
from airbnb_search_details 
group by city, property_type