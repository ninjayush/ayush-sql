create database superchaina;
use superchaina;

create table student (
	stid int,
	stname varchar(25),
	aadhaarno int unique not null,
    marks int,
    hobby enum('dance','music','sport'),
    cellno int
);

alter table student modify aadhaarno int primary key;
alter table student add dob date;
alter table student drop cellno;
alter table student drop stid;
