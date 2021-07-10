select if(grade < 8, NULL, name), grade, marks from Students s
join grades 
where marks between min_mark and max_mark
order by grade desc, name