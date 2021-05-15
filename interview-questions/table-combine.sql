/*
Combine Two Tables
Link: https://leetcode.com/problems/combine-two-tables/
*/
select FirstName, LastName, City, State from person
left join address on person.PersonId = address.PersonId