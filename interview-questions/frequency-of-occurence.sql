/*

display frequency of each value in a column and display the values
that occur more than once

*/
with df as (
select client_id from invoices
)

select client_id,count(client_id) as count from df
group by client_id
having count > 1