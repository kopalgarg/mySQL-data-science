/*
Acceptance Rate By Date
Link: https://platform.stratascratch.com/coding-question?id=10285&python=
*/

select a.date, count(b.action)/count(a.action)::float as acceptance_rate from
    (select * from fb_friend_requests where action = 'sent') a
    left join( select * from fb_friend_requests where action = 'accepted') b
                on a.user_id_sender = b.user_id_sender 
                and a.user_id_receiver = b.user_id_receiver 
    group by a.date