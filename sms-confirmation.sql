/*
SMS Confirmations From Users
Link: https://platform.stratascratch.com/coding/10291-sms-confirmations-from-users?python=
*/
select (count(c.phone_number)/count(s.phone_number)::float)*100 as percent
from fb_sms_sends s
join fb_confirmers c on s.phone_number=c.phone_number and s.ds = c.date
where type not in ('friend_request','confirmation')
and ds = '2020-08-04'

