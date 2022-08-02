SELECT * FROM `1113. reported posts`.actions
where  action ="report";


select extra as report_reason, count(distinct post_id) as report_count 
from `1113. reported posts`.actions 
where action_date= "2019-07-04" and action ="report"
group by extra