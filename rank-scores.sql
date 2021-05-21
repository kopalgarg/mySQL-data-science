/*
178. Rank Scores
Link:https://leetcode.com/problems/rank-scores/
*/
# solution 1: using a window function
# note: 
#   rank() produces 1,1,3
#   dense_rank() produces 1,1,2
select Score, dense_rank() over (order by score desc) as 'Rank' 
from Scores

# solution 2: 
select s1.Score, (select count(distinct(Score)) 
                  from Scores s2 
                  where s2.Score >= s1.Score) as "Rank"
from Scores s1 
order by s1.Score desc