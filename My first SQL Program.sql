show databases;
create database practicedb;
use practicedb;
create table student(sid int,sname char(50),age int,course char(30));
desc student;
insert into student values(1,"Aakash",25,"MySQL");
insert into student values(2,"Abhi",26,"Data analytics");
select * from student;