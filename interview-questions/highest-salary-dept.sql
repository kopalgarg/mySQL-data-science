/*
Highest Salary In Department
Link: https://platform.stratascratch.com/coding-question?id=9897&python=
*/
with department_table as 
(
    select max(salary), department from employee group by department

), name_table as 
(
    select max(salary), first_name from employee group by department, first_name

)
select * from department_table
left join name_table using(max)
