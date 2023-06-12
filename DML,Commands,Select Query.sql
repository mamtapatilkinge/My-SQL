show databases;
create database practicedb;
use practicedb;
create table student(sid int,sname char(50),age int,course char(30));
desc student;
insert into student values(1,"Aakash",25,"MySQL");
insert into student values(2,"Abhi",26,"Data analytics");
select * from student;
-- Now I am going to create table with date and datetime datatype
create table patients(pid int,pname varchar(50), dob date,toa datetime);
desc patients;
insert into patients values(1,"xyz","2000-01-02","2023-01-02 09:00:00");
insert into patients values(2,"abc","1995-01-05",now());
select * from patients;
select adddate("2020-01-02",5);
select year(dob) from patients;
-- select is acting as print statement
select 34+56 as result;
select 2>3 as Result;
select 2=2 as Result;
select 2=null as Result;
select 2 is null as Result;
select 2 is not null as Result;
-- alter command
alter table student add column marks int;
alter table student drop column age;
alter table student change column sid std_id int;
alter table student modify column sname varchar(50);
rename table student to myclass;
select * from myclass;
desc myclass;
-- drop table 
create table mytable(id int,name varchar(50));
insert into mytable values(1,"Harsha");
select * from mytable;
drop table mytable;
-- How many tables are  in my database
show tables;
select * from student;
select * from myclass;  -- select is printing the table "myclass"
-- second method of inserting records
insert into myclass(std_id,sname,marks) values(3,"Harsha",75);  
-- third methods of inserting records
insert into myclass values(4,"Harini","MYSQL",80),(5,"Abid","Data Analytics",76),(6,"join","MySQL",77);
-- Update Commands 
-- If the table is not upadting then go to(means error occur then)> Edit > preference>safe mode disable and > Query > Reconnect to server
update myclass set course="Data Analytics" where std_id=4;
update myclass set marks=0 where marks is null;
update myclass set course="MySQL" where course is null; 
update myclass set course="MySQL";    -- update whole column course by MYSQL
set sql_safe_updates=0;
-- Delete Commands
delete from myclass where std_id=6;
delete from myclass where marks=0;
delete from myclass;                   -- delete all records from myclass table
truncate table myclass;
select emp_id,first_name,last_name,salary,salary*0.2 as Bonus from myemp limit 20;