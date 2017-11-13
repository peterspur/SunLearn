create database sunlearn
go
use sunlearn
go
drop database sunlearn
create table admin_sunlearn(
adminNo varchar(20) primary key,
adminPwd varchar(20))
go
insert into admin_xiangmu values('admin','123')
go
create table student(
stuNo varchar(20) primary key,
stuPwd varchar(20) ,
stuName varchar(20),
stuGender varchar(20),
clNo varchar(20)
)
go
insert into student values('201440703557','123','LCC','ÄÐ','java01')
go
insert into student values('332','44','1','ÄÐ','java01')
go
select *from student
go
delete  from student
drop table student
go

create table room(
roNo varchar(20) primary key,
roName varchar(20),
roTime varchar(20),
lsNo varchar(20),
tecNo varchar(20),
clNo varchar(20))
go

create table lesson(
lsid varchar(20) primary key,
lsTime varchar(20),
lsRomm varchar(20))
go
insert into lesson values('101','2017-10-14','bozhi'),('102','2017-9-19','boyuan')
go
select *from lesson
go
drop table lesson
go
create table teacher(
tecNo varchar(20) primary key,
tecPwd varchar(20),
tecName varchar(20)
)
go
insert into teacher values('110','123','LCC')
go
select * from teacher
go
drop table teacher
go
create table class(
clNo varchar(20) primary key,
clName varchar(20),
tecNo varchar(20))

go
create table attendance(
atNo varchar(20) primary key,
atTime varchar(20) ,
clNo varchar(20),
stuNo varchar(20),
lsNo varchar(20))
go
insert into attendance values('1','xqk6_am','java01','201440703557','rjgc'),('2','xqt_pm','java01','201440703557','niit')
select *from attendance
create table attendance_sum(
atsNo varchar(20) primary key,
stuNo varchar(20),
lsNo varchar(20),
lsAtSum varchar(20),
atsum varchar(20))
go

create table feedbackSum(
fdId varchar(20) primary key,
stuId varchar(20),
tecId varchar(20),
clId varchar(20),
lsId varchar(20),
fdTime date,
fdNo int,
fdThing varchar(100))
go
drop table feedbackSum
create table feedback(
fbNo int primary key ,
lsNo varchar(20),
tecNo varchar(20),
firsth int,
secount int,
third int,
fourth int,
other varchar(200),
fdsum int)
go
drop table feedback
select*from feedback