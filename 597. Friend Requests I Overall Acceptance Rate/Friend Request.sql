select 
round(
(select count(*) from 
(select distinct requester_id , accepter_id 
from `597. friend requests i: overall acceptance rate`.request_accepted) as a)/(select count(*) 
from (select distinct sender_id, send_to_id 
from `597. friend requests i: overall acceptance rate`.friend_request) as b),2) 
as accept_rate