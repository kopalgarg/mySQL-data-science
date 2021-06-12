select 
case
    when A+B>C and B+C>A and C+A>B then 
    case
        when A=B and B=C then "Equilateral"
        when A=B or B=C or A=C then "Isosceles"
        when A!=B and B!=C and C!=A  then "Scalene"
    end
else "Not A Triangle"
end
from TRIANGLES