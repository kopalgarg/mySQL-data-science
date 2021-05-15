/*
Finding Updated Records
Link: https://platform.stratascratch.com/coding-question?id=10299&python=
*/

select id, first_name, last_name, department_id, max(salary) as current_salary 
from ms_employee_salary group by id, department_id, first_name, last_name
order by id desc


