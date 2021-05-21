/*
Employee and Manager Salaries
Link:https://platform.stratascratch.com/coding-question?id=9894&python=
*/
select e.first_name as employee_name, e.salary as employee_salary
from employee e
inner join employee m on e.manager_id = m.id
where e.salary > m.salary;

