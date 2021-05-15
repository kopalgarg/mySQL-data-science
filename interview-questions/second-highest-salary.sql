/*
176. Second Highest Salary
Link: https://leetcode.com/problems/second-highest-salary/
*/
select distinct e1.Salary as SecondHighestSalary from Employee e1
where 1 = (select count(distinct e2.Salary) 
             from Employee e2
             where e2.Salary > e1.Salary)