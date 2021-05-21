/*

display even records in a table 

*/
with rownumtable as (
select rank() over (order by client_id) as rownum, 'name', city from clients
)
select * from rownumtable where mod(rownum, 2) !=0

