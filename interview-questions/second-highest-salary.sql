/*
176. Second Highest Salary
Link: https://leetcode.com/problems/second-highest-salary/
*/
-- solution 1
select distinct e1.Salary as SecondHighestSalary from Employee e1
where 1 = (select count(distinct e2.Salary) 
             from Employee e2
             where e2.Salary > e1.Salary);
             
-- solution 2
select max(e1.sal) from Employee e1 
where e1.sal not in (select max(e2.Salary) from Employee e2);