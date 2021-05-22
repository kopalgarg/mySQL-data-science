/*
Project Employees II
LeetCode
*/
-- solution1 
select distinct project_id
from Project
group by project_id
having count(employee_id) = (select count(employee_id) as count from Project
							group by project_id order by count desc limit 1)
                            
-- solution2
with sub as (select project_id, count(*) as count from Project group by project_id)

select project_id from sub
where count = (select max(cnt) from sub)