use superchaina;

select * from student;
select * from marks;

select stname, hobby from student;

select stname from student where marks <=35;

select max(marks) from student;
select min(marks) from student;

select stname from student where hobby is null;

select distinct hobby from student;

select count(*), hobby from student group by hobby;

select stname, marks from student order by marks desc;

select aadhaarno from student where stname='itadori';

select stname from student join marks on student.aadhaarno = marks.aadhaarno where physics=(select max(physics) from marks);
select stname from student join marks on student.aadhaarno = marks.aadhaarno where chemistry=(select max(chemistry) from marks);
select stname from student join marks on student.aadhaarno = marks.aadhaarno where maths=(select max(maths) from marks);

select avg(physics), avg(chemistry), avg(maths) from marks;

select stname, stid, dob from student join marks on student.aadhaarno = marks.aadhaarno order by dob desc;

select * from student join marks;

select count(*) from student where marks<=70 and maarks>=50;

select stname from student where hobby = 'sport' or hobby = 'dance';

select * from student join marks on marks.aadhaarno=student.aadhaarno;

select stname from student where stname like 'm%' or stname like 's%';

select stname from student where stname like '_a%';
