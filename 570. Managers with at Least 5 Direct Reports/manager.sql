SELECT * FROM `570. managers with at least 5 direct reports`.employee;

select name from `570. managers with at least 5 direct reports`.employee 
where id in (select managerId from `570. managers with at least 5 direct reports`.employee
group by ManagerId 
having count(managerid)>=5)