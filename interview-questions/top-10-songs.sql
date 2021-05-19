/*
Find the top 10 ranked songs in 2010
Link: https://platform.stratascratch.com/coding-question?id=9650&python=
*/

select distinct year_rank, group_name, song_name from billboard_top_100_year_end
where year = 2010 and year_rank < 11