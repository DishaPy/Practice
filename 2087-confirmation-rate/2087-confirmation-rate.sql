# Write your MySQL query statement below
select s.user_id, ifnull(Round(SUM(action='confirmed')/COUNT(*),2),0.0) as confirmation_rate  from Signups s LEFT JOIN Confirmations c 
On s.user_id= c.user_id group by s.user_id;