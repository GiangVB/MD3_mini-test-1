create database quanlyhocvien;
use quanlyhocvien;

create table address(
    id int auto_increment primary key ,
    address nvarchar(30)
);

create table class(
    id nvarchar(20) primary key ,
    name nvarchar(20),
    language nvarchar(20),
    description nvarchar(50)
);

create table student(
    id nvarchar(20) primary key ,
    fullname nvarchar(30),
    address_id int,
    age int,
    phone nvarchar(10) unique ,
    class_id nvarchar(20),
    foreign key (address_id) references address(id),
    foreign key (class_id) references class(id)
);

create table course(
    id int auto_increment primary key ,
    name nvarchar(20),
    description nvarchar(50)
);

create table point(
    id int auto_increment primary key ,
    course_id int not null ,
    student_id nvarchar(20) not null ,
    point int,
    foreign key (course_id) references course(id),
    foreign key (student_id) references student(id)
);

insert into address(id, address) VALUES (1,'Ba Đình');
insert into address(id, address) VALUES (2,'Cầu Giấy');
insert into address(id, address) VALUES (3,'Đống Đa');
insert into address(id, address) VALUES (4,'Bắc Từ Liêm');
insert into address(id, address) VALUES (5,'Nam Từ Liêm');
