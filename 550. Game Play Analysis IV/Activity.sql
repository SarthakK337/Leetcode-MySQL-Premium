-- SELECT * FROM `550. game play analysis iv`.book1;

-- select * from (select player_id, min(event_date) as first_date from `550. game play analysis iv`.book1
-- group by player_id) a 
-- left join `550. game play analysis iv`.book1 b 
-- on a.player_id=b.player_id and datediff(a.first_date, b.event_date) = -1

-- SELECT player_id, min(event_date) as event_start_date
-- from `550. game play analysis iv`.book1 
-- group by player_id ;

SELECT
round((count(distinct c.player_id) / (select count(distinct player_id) from activity)),2)as fraction
FROM (SELECT
player_id, min(event_date) as event_start_date
from `550. game play analysis iv`.book1 group by player_id ) c
JOIN `550. game play analysis iv`.book1 a
on c.player_id = a.player_id
and datediff(c.event_start_date, a.event_date) = -1

