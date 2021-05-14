/*
Salaries Differences
Link: https://platform.stratascratch.com/coding-question?id=10308&python=
*/

select 
(select max(de.salary)
from db_employee de
inner join db_dept dd on de.department_id = dd.id
where (department like 'marketing')) - 
(select max(de.salary)
from db_employee de
inner join db_dept dd on de.department_id = dd.id
where (department like 'engineering')) 
as result
