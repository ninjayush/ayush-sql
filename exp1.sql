create database superchaina;
use superchaina;

create table student (
	stid int,
	stname varchar(25),
	aadhaarno varchar(14) unique not null,
    marks int,
    hobby enum('dance','music','sport')
);
    
create table marks (
	stid int,
    aadhaarno varchar(14),
    physics int,
    chemistry int,
    maths int
);


    