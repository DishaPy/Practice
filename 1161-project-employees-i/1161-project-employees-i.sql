# Write your MySQL query statement below
select p.project_id,
round(AVG(e.experience_years),2) as average_years 
from Project p LEFT join Employee e  
ON p.employee_id=e.employee_id 
group by project_id;