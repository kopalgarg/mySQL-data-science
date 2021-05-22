/*
Sellers With No Sales
Link: https://leetcode.com/problems/sellers-with-no-sales/
*/

select seller_name from Seller 
where seller_id not in (
 select distinct seller_id from Orders where left(sale_date, 4) = ‘2020’
)
order by seller_name