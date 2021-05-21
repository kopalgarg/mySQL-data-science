/*
Find the base pay for Police Captains
Link: https://platform.stratascratch.com/coding-question?id=9972&python=
*/
select employeename, basepay from sf_public_salaries
where jobtitle ilike '%captain%police%'