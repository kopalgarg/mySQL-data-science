/*
Clicked Vs Non-Clicked Search Results
Link: https://platform.stratascratch.com/coding/10288-clicked-vs-non-clicked-search-results?python=
*/
select(
    (select count(*) from fb_search_results where position = '1' or position = '2' or position = '3')/
    (select count(*) from fb_search_results)::float *100
) as top_3_percentage