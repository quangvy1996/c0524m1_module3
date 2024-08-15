create database ERD;
use ERD;

create table PHIEUXUAT(
SoPX int primary key auto_increment,
NgayXuat date
);

create table VATTU(
MaVTU int primary key auto_increment,
TenVTU varchar(50));

create table PHIEUNHAP(
SoPN int primary key auto_increment,
NgayNhap date);

create table NHACC(
MaNCC int primary key auto_increment,
TenNCC varchar(50),
DiaChi varchar(100),
SDT varchar(10)
);

create table DONDH(
SoDH int primary key auto_increment,
MaNCC int,
NgayDH date,
foreign key (MaNCC) references NHACC(MaNCC)
);

create table chitietphieuxuat(
MaVTU int ,
SoPX int,
DGXuat double,
SLXuat int,
foreign key(MaVTU) references VATTU(MaVTU),
foreign key(SoPX) references PHIEUXUAT(SoPX)
);

create table chitietphieunhap(
DGNhap double,
SLNhap int,
MaVTU int,
SoPN int,
foreign key(MaVTU) references VATTU(MaVTU),
foreign key(SoPN) references PHIEUNHAP(SoPN));

create table chitietdonhang(
MaVTU int,
SoDH int,
foreign key(MaVTU) references VATTU(MaVTU),
foreign key (SoDH) references DONDH(SoDH));

