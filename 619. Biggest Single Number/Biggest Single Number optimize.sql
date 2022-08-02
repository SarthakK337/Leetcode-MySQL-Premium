SELECT * FROM `619. biggest single number`.my_numbers;

select max(num) as num from  
(select num
    from `619. biggest single number`.my_numbers
    group by num
    having count(num) = 1) n