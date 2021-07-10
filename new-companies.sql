select c.company_code, 
    c.founder,
    count(distinct l.lead_manager_code),
    count(distinct s.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
from Company c 
    join Lead_Manager l on c.company_code = l.company_code
    join Senior_Manager s on l.lead_manager_code = s.lead_manager_code 
    join Manager m on m.senior_manager_code = s.senior_manager_code
    join Employee e on e.manager_code = m.manager_code
group by c.company_code, c.founder 
order by c.company_code asc