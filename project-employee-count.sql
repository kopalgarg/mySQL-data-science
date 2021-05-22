/*
Project Employees II
LeetCode
*/
select distinct project_id
from Project
group by project_id
having count(employee_id) = (select count(employee_id) as count from Project
							group by project_id order by count desc limit 1)