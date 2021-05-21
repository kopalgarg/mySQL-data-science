/*
Income By Title and Gender
Link: https://platform.stratascratch.com/coding-question?id=10077&python=
*/
select e.employee_title, e.sex, sum(b.bonus)+e.salary as avg_compensation 
from sf_employee e
inner join sf_bonus b on b.worker_ref_id = e.id
group by e.employee_title, e.sex, e.salary
