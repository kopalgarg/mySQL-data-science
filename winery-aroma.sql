/*
Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut
Link: https://platform.stratascratch.com/coding-question?id=10026&python=
*/
select distinct winery 
from winemag_p1
where description ilike '%plum%' or
      description ilike '%cherry%' or
      description ilike '%rose%' or
      description ilike '%hazelnut%' 