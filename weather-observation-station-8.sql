-- solution 1
select distinct CITY from STATION 
where lower(substr(CITY,length(CITY),1)) in ('a','e','i','o','u') and 
      lower(substr(CITY, 0, 1)) in ('a','e','i','o','u');
-- solution 2
select distinct CITY from STATION 
where CITY regexp '[aeiou]$' and 
      CITY in (select CITY from STATION where CITY regexp '^[aeiou]');