select Day,sum(Value) over (order by Day) as runningSum
from Registrations