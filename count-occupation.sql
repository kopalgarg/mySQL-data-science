/*
The PADS
Link: https://www.hackerrank.com/challenges/the-pads/problem
*/

select concat(Name,'(',Substring(Occupation,1,1),')') from OCCUPATIONS order by NAME;
with count_df as (select OCCUPATION, count(OCCUPATION) as count from OCCUPATIONS group by OCCUPATION)
select concat('There are a total of',' ', count,' ',lower(OCCUPATION),'s.') from count_df group by OCCUPATION order by count asc
