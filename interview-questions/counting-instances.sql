/*
Counting Instances in Text
Link: https://platform.stratascratch.com/coding-question?id=9814&python=
*/
select word, nentry 
from ts_stat('select to_tsvector(contents) from google_file_store')
where word like 'bull' or word like 'bear'