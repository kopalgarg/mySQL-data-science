/*
Classify Business Type
Link: https://platform.stratascratch.com/coding-question?id=9726&python=
*/
select distinct business_name,
    case 
        when lower(business_name) like any(array['%school%']) then 'school'
        when lower(business_name) like any(array['%coffee%','%cafe%']) then 'cafe'
        when lower(business_name) like any(array['%restaurant%']) then 'restaurant'
        else 'other'
    end as business_type
from sf_restaurant_health_violations