/*
177. Nth Highest Salary
Link:https://leetcode.com/problems/nth-highest-salary/
*/
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select distinct e1.salary 
      from Employee e1 
      where N-1 = (select count(distinct e2.Salary) 
                   from Employee e2 
                   where e2.Salary > e1.Salary)

  );
END

