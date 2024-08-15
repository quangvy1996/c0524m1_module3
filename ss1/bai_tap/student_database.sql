create database student_management;
use student_management;

create table Class(
id int,
name varchar(50));

create table Teacher(
id int,
name varchar(50),
age int,
country varchar(50));

insert into Class(id, name) values (1, "Vỹ");
insert into Teacher(id, name, age, country) values (1,"Chanh",35,"Vietnam");
