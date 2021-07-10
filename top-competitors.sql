select h.hacker_id, h.name 
from Hackers h
inner join Challenges c on c.hacker_id = h.hacker_id
inner join Difficulty d on d.difficulty_level = c.difficulty_level
inner join Submissions s on s.hacker_id = c.hacker_id
where d.score = s.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id)>1
order by count(s.hacker_id) desc, s.hacker_id asc