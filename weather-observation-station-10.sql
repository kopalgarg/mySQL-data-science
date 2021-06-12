select distinct CITY from STATION 
where lower(substr(CITY,length(CITY), 1)) not in ('a','e','i','o','u') 