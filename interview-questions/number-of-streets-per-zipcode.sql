/*
Number of Streets Per Zip Code
Link: https://platform.stratascratch.com/coding-question?id=10182&python=
*/

select business_postal_code, 
       count(distinct case 
                    when left(business_address, 1) ~'^[0-9]' then lower(split_part(business_address, ' ', 2))
                    else lower(split_part(business_address, ' ', 1))
                    end) as n_street
from sf_restaurant_health_violations
where business_postal_code is not null
group by business_postal_code
order by n_street desc, business_postal_code asc