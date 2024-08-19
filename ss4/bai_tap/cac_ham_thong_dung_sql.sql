use quanlysinhvien;

SELECT * 
FROM subject
WHERE credit = (SELECT MAX(credit) FROM subject);

select SubName, max(MarK)
from subject
join
mark on mark.SubId = subject.SubId
group by SubName
having max(Mark) = (select max(Mark) from Mark);

select StudentName, avg(MarK)
from student
join
mark on mark.StudentId = student.StudentId
group by StudentName
order by mark.Mark;

select student.StudentId, student.StudentName, avg(mark.MarK) as average_mark
from student
join
mark on mark.StudentId = student.StudentId
group by student.StudentId, student.StudentName
order by avg(mark.MarK) desc;
