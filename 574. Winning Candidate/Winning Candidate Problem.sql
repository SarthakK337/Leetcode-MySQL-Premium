SELECT * FROM `574. winning candidate`.vote;

select a.name from `574. winning candidate`.candidate a
join (select candidateid, count(candidateid) from `574. winning candidate`.vote
group by candidateid 
order by count(candidateid) DESC 
limit 1) b
on a.id=b.candidateid