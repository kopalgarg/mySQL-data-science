/*
Swap Salary
Link: https://leetcode.com/problems/swap-salary/
*/
UPDATE Salary 
SET sex = CASE sex
        WHEN "m" THEN "f"
        ELSE 'm'
END