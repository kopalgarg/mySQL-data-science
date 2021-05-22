/*
Friendly Movies Streamed Last Month
Link: https://leetcode.com/problems/friendly-movies-streamed-last-month/
*/
select distinct title from Content
left join program using(content_id)
where content_type = 'Movies' and Kids_content = 'Y'
and left(program_date,7) = ‘2020–06’
