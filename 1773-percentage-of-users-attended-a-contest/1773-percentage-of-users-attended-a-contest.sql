# Write your MySQL query statement below
select contest_id ,
ROUND((count( distinct user_id))*100/(select count(user_id)FROM users),2) as percentage  
from Register  
group by contest_id 
order by percentage desc,contest_id