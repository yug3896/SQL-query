create table technology(dept varchar(20), tech varchar(20));
select * from technology;
Insert into technology values ('Operations','MS excel')
select * from employee;
Select * from employee emp left join technology tech on emp.e_dept=tech.dept;
Select * from employee emp right join technology tech on emp.e_dept=tech.dept;
Select * from employee emp inner join technology tech on emp.e_dept=tech.dept;

-- natural join
Select * from employee emp, technology tech where emp.e_dept=tech.dept;

-- Full join
Select * from employee emp left join technology tech on emp.e_dept=tech.dept
union
Select * from employee emp right join technology tech on emp.e_dept=tech.dept;