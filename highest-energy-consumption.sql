/*
Highest Energy Consumption
Link: https://platform.stratascratch.com/coding-question?id=10064&python=
*/

with cte as 
(
    select date,sum(consumption) total_energy
    from(
        select * from fb_eu_energy
        union
        select * from fb_asia_energy
        union
        select * from fb_na_energy
    )a
    group by date
)
select date, total_energy
from cte 
where total_energy =(select max(total_energy)
from cte
);