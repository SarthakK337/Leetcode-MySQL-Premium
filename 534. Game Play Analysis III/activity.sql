SELECT * FROM `534. game play analysis iii`.activity;

select a.player_id, a.event_date ,sum(a.games_played) 
from `534. game play analysis iii`.activity a join `534. game play analysis iii`.activity a1 on a.player_id= a1.player_id and a.event_date >= a1.event_date
group by a.player_id, a.event_date
order by a.player_id, a.event_date;

select player_id, event_date , 
sum(games_played) over (partition by player_id order by event_date) as games_played_so_far
from `534. game play analysis iii`.activity;