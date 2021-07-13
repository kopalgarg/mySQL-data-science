select count(user_id) as total, 
       sum(case when is_sigtrack = 'Y' then 1 else 0 end) as sig 
from enrollments 