/*
Highest Target Under Manager
Link: https://platform.stratascratch.com/coding-question?id=9905&python=
*/
with manager_13 as (
    select e.first_name,e.target from salesforce_employees e
    inner join salesforce_employees m on e.manager_id = m.id
    where e.manager_id =13 
    
)
select * from manager_13
where target = (select max(target) from manager_13)