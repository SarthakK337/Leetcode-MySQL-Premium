SELECT * FROM `512. game play analysis ii`.activity;

select player_id, device_id from activity
where (player_id, event_date) in 
(SELECT player_id, min(event_date ) FROM activity 
group by player_id)