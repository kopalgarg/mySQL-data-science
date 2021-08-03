/*
Expensive Projects
Link: https://platform.stratascratch.com/coding/10301-expensive-projects?python=
*/

select 
    p.title,
    p.budget/count(e.emp_id) as b_ratio
from ms_projects p
join ms_emp_projects e on p.id = e.project_id
group by p.title, p.budget
order by b_ratio desc
limit 5