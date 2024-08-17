CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class
(
    ClassID   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME    NOT NULL,
    Status    BIT
);
CREATE TABLE Student
(
    StudentId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(30) NOT NULL,
    Address     VARCHAR(50),
    Phone       VARCHAR(20),
    Status      BIT,
    ClassId     INT         NOT NULL,
    FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);
CREATE TABLE Subject
(
    SubId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubName VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    Status  BIT                  DEFAULT 1
);

CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);

INSERT INTO Class (ClassName, StartDate, Status)
VALUES 
    ('Mathematics 101', '2024-01-10 08:00:00', 1),
    ('Physics 101', '2024-01-11 09:00:00', 1),
    ('Chemistry 101', '2024-01-12 10:00:00', 1),
    ('Biology 101', '2024-01-13 11:00:00', 0),
    ('History 101', '2024-01-14 12:00:00', 1),
    ('Geography 101', '2024-01-15 13:00:00', 0),
    ('English 101', '2024-01-16 14:00:00', 1),
    ('Computer Science 101', '2024-01-17 15:00:00', 1),
    ('Philosophy 101', '2024-01-18 16:00:00', 0),
    ('Art 101', '2024-01-19 17:00:00', 1);
 
 INSERT INTO student (StudentName, Address, Phone, Status, ClassID)
VALUES 
    ('Nguyen Van A', '123 Le Loi, District 1', '0901234567', 1,1),
    ('Tran Thi B', '456 Tran Hung Dao, District 3', '0912345678', 1,2),
    ('Le Van C', '789 Phan Dinh Phung, District 5', '0923456789', 0, 3),
    ('Pham Thi D', '101 Nguyen Trai, District 7', '0934567890', 1, 4),
    ('Hoang Van E', '202 Hai Ba Trung, District 1', '0945678901', 0, 5),
    ('Do Thi F', '303 Le Van Sy, District 10', '0956789012', 1, 6),
    ('Vo Van G', '404 Phan Xich Long, District Phu Nhuan', '0967890123', 0, 7),
    ('Dang Thi H', '505 Nguyen Thi Minh Khai, District 1', '0978901234', 1, 8),
    ('Ly Van I', '606 Vo Van Tan, District 3', '0989012345', 1, 9),
    ('Bui Thi J', '707 Cong Hoa, District Tan Binh', '0990123456', 0, 10);
    
    INSERT INTO Subject (SubName, Credit, Status) VALUES
('Mathematics', 3, 1),
('Physics', 4, 1),
('Chemistry', 3, 0),
('Biology', 2, 1),
('History', 3, 1),
('Geography', 2, 0),
('Literature', 3, 1),
('Art', 2, 1),
('Music', 2, 0),
('Physical Education', 1, 1);

INSERT INTO mark (SubId, StudentId, Mark, ExamTimes)
VALUES
(1, 1, 85.5, 1),
(2, 2, 92.0, 1),
(3, 3, 78.3, 1),
(4, 4, 88.7, 1),
(5, 5, 65.2, 1),
(6, 6, 74.5, 1),
(7, 7, 91.5, 1),
(8, 8, 82.0, 1),
(9, 9, 69.4, 1),
(10, 10, 87.9, 1);


SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(StudentName, ' ', -1), ' ', 1) AS last_name
FROM student
WHERE StudentName LIKE '% h%';

select *
from class where StartDate like "%-12-%";

select *
from subject
where Credit >=3 and Credit <=5;

update student
set ClassId = 2
where StudentId = 11 and StudentName  like "% hung";

select StudentName, SubName, Mark
from student 
join 
mark on student.StudentId = mark.StudentId
join
subject on subject.SubId = mark.SubId
order by
mark.Mark DESC,
student.StudentName ASC;

