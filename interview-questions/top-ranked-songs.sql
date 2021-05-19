/*
Top Ranked Songs
Link: https://platform.stratascratch.com/coding-question?id=9991&python=
*/
select trackname, count(id) as times_top1 from spotify_worldwide_daily_song_ranking
where position= '1'
group by trackname
order by times_top1 desc