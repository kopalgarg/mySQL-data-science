

with pivot as (
select 
     case when occupation = 'Doctor' then name end Doctor,
     case when occupation = 'Professor' then name end Professor,
     case when occupation = 'Singer' then name end Singer,
     case when occupation = 'Actor' then name end Actor,
     rank() over(partition by occupation order by name asc) as _rank
     from occupations
)

select max(Doctor), max(Professor), max(Singer), max(Actor) from pivot
group by _rank