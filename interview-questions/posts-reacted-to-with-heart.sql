/*
Find all posts which were reacted to with a heart
Link: https://platform.stratascratch.com/coding-question?id=10087&python=
*/
select distinct p.post_id, p.poster, p.post_text, p.post_keywords, p.post_date from facebook_reactions r
left join facebook_posts p using(post_id)
where reaction = 'heart'