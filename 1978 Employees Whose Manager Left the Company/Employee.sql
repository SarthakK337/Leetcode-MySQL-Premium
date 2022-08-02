SELECT * FROM `1978 employees whose manager left the company`.employee;

select employee_id from `1978 employees whose manager left the company`.employee 
where salary<30000 and employee_id in (select manager_id from `1978 employees whose manager left the company`.employee 
where salary<30000)