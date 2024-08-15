create database Quanlybanhang;
use Quanlybanhang;
create table Customer(
cID int primary key auto_increment,
cName varchar(50),
cAge int);

create table Orderr(
oID int primary key auto_increment,
cID int,
oDate date,
oTotalPrice double,
foreign key (cID) references Customer(cID)
);

create table Product(
pID int primary key auto_increment,
pName varchar(50),
pPrice double);

create table OrderDetail(
oID int,
pID int,
odQTY int,
foreign key (oID) references Orderr(oID),
foreign key (pID) references Product(pID)
);


