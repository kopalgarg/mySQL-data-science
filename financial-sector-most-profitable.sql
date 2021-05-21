/*
Most profitable company in the financial sector
Link: https://platform.stratascratch.com/coding-question?id=9663&python=
*/
select company, continent from forbes_global_2010_2014
where sector = 'Financials' and profits = (select max(profits) profits from forbes_global_2010_2014)