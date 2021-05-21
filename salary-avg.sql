/*
Average Salaries
Link: https://platform.stratascratch.com/coding-question?id=9917&python=
*/
select department, first_name, salary, avg(salary) over (partition by department)
from employee 


