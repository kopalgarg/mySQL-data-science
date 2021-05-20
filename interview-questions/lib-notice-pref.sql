/*
Find libraries who haven't provided the email address in 2016 but their notice preference definition is set to email
Link: https://platform.stratascratch.com/coding-question?id=9924&python=
*/
select * from library_usage
where notice_preference_definition = 'email' and provided_email_address= 'FALSE'