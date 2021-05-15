/*
Premium vs Freemium
Link: https://platform.stratascratch.com/coding-question?id=10300&python=
*/

with not_paying as (
    select date, sum(downloads)as not_paying from ms_user_dimension u 
    inner join ms_acc_dimension a using(acc_id)
    inner join ms_download_facts d on u.user_id = d.user_id
    where paying_customer = 'no'
    group by date),
    paying as (
    select date, sum(downloads) as paying from ms_user_dimension u 
    inner join ms_acc_dimension a using(acc_id)
    inner join ms_download_facts d on u.user_id = d.user_id
    where paying_customer = 'yes'
    group by date)
    
select * from not_paying
inner join paying using(date)
where not_paying > paying
order by date asc
