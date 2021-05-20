/*
Find artists that have been on Spotify the most number of times
Link: https://platform.stratascratch.com/coding-question?id=9992&python=
*/
select artist,count(artist) from spotify_worldwide_daily_song_ranking
group by artist
order by count desc