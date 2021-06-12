select distinct CITY from STATION 
where lower(substr(CITY,length(CITY), 1)) not in ('a','e','i','o','u') or 
      lower(substr(CITY,1, 1)) not in ('a','e','i','o','u')