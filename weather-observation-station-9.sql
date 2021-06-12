select distinct CITY from STATION 
where lower(substr(CITY,1, 1)) not in ('a','e','i','o','u') 