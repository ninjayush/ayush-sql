use superchaina;

create table marks (
	stid int,
    	aadhaarno int,
    	physics int,
    	chemistry int,
	    maths int
);

alter table marks add foreign key (aadhaarno) references student (aadhaarno);

insert into student values('itadori', 101, null, 'sport', '1962-12-23'),
					('megumi', 102, null, 'music', '1962-11-22'),
                    ('satoru', 103, null, 'sport', '1962-10-21'),
                    ('panda', 104, null, 'dance', '1962-09-20'),
                    ('usagi', 105, null, null, '1962-08-19'),
                    ('toji', 106, null, null, '1962-07-18'),
                    ('ash', 107, null, 'sport', '1962-06-17'),
                    ('po', 108, null, 'music', '1962-05-16');
                    
insert into marks values(1, 101, 78, 36, 82),
					(2, 102, 87, 36, 28),
                    (3, 103, 22, 24, 97),
                    (4, 104, 32, 38, 85),
                    (5, 105, 98, 26, 21),
                    (6, 106, 68, 46, 32),
                    (7, 107, 82, 57, 42),
                    (8, 108, 39, 24, 23);
                    
 update marks set physics=physics*1.1;
 update marks set physics=100 where marks.physics>100;
 
update student set stname= 'dash' where aadhaarno=107;
update student set stname= 'genos' where aadhaarno=105;

insert into student values('ike', 109, null, 'sport', '1962-04-13'),
					('takada', 110, null, 'dance', '1962-03-11'),
                    ('ryo', 111, null, 'music', '1962-02-21');

insert into marks values(9, 109, 72, 34, 81),
					(10, 110, 89, 33, 25),
                    (11, 111, 85, 32, 23);

delete from marks where aadhaarno=110;
delete from student where aadhaarno=110;

update marks set maths=82 where stid=8;

update student set marks= (select(physics+chemistry+maths)/3 from marks where marks.aadhaarno=student.aadhaarno);

                    
