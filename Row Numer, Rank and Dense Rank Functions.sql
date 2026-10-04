create database students_data;

use students_data;

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);


select * from students;
--NOTE: These are windowed functions whihc can only appear in select/order by clause.

--Row Number Function

select *, row_number() over(order by marks desc) as row_num
from students

--Rank Function (if same marks, then same rank and next rank number will be skipped from sequence)

select *, rank() over( order by marks desc) as rank_by_marks
from students

--Dense Rank Function (if same marks, then same rank and next rank number will NOT be skipped from sequence)

select * , dense_rank() over(order by marks desc) as dense_rank_on_marks
from students

--Using partition by clause (window based on subject)

select *, row_number() over(partition by subject order by marks desc)
from students

select *, rank() over(partition by subject order by marks desc)
from students

select *, dense_rank() over(partition by subject order by marks desc)
from students

--Using partition by clause (window based on student_name)

select *, row_number() over(partition by student_name order by marks desc)
from students

select *, rank() over(partition by student_name order by marks desc)
from students

select *, dense_rank() over(partition by student_name order by marks desc)
from students

