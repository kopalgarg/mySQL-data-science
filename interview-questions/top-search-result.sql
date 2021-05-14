/*
Top Search Results
Link: https://platform.stratascratch.com/coding-question?id=10288&python=
*/

select(
    (select count(*) from fb_search_results where position = '1' or position = '2' or position = '3')/
    (select count(*) from fb_search_results)::float *100
) as top_3_percentage