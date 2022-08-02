SELECT * FROM `619. biggest single number`.my_numbers;

select max(num) as num from `619. biggest single number`.my_numbers
where num not in 
(select b.num from 
(select a.num, if(a.num=(lag(a.num,1,0) OVER (order by a.num)),1,0) as repeating from 
(select num from `619. biggest single number`.my_numbers
order by num) a) b
where b.repeating=1)
