-- Create the database
CREATE DATABASE student_database;


-- Create the student_table with Student_id as INTEGER primary key
CREATE TABLE student_table (
    Student_id INTEGER PRIMARY KEY,  -- Using INTEGER for primary key
    Stu_name TEXT,
    Department TEXT,
    email_id TEXT,
    Phone_no BIGINT,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC(3,2),
    Grade TEXT
);

-- Insert 10 sample records into the "student_table" using INSERT command.

INSERT INTO student_table (Student_id, Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade)
VALUES
(1, 'Rahul Kumar', 'Engineering', 'rahul.kumar@email.com', 9991234567, 'Ranchi, Jharkhand', '2001-05-15', 'Male', 'Computer Science', 8.5, 'A'),
(2, 'Anjali Sharma', 'Arts', 'anjali.sharma@email.com', 9882345678, 'Dhanbad, Jharkhand', '2000-03-22', 'Female', 'Psychology', 7.9, 'B'),
(3, 'Sandeep Yadav', 'Commerce', 'sandeep.yadav@email.com', 9551122334, 'Muzaffarpur, Bihar', '1999-12-10', 'Male', 'Business', 4.5, 'C'),
(4, 'Priya Gupta', 'Engineering', 'priya.gupta@email.com', 9823456789, 'Gaya, Bihar', '2002-07-30', 'Female', 'Electrical', 9.2, 'A'),
(5, 'Vikas Kumar', 'Science', 'vikas.kumar@email.com', 9876543210, 'Jamshedpur, Jharkhand', '2000-11-11', 'Male', 'Physics', 7.0, 'B'),
(6, 'Rita Rani', 'Engineering', 'rita.rani@email.com', 9988776655, 'Jabalpur, Madhya Pradesh', '2001-04-02', 'Female', 'Mechanical', 6.8, 'C'),
(7, 'Amit Singh', 'Commerce', 'amit.singh@email.com', 9712345678, 'Chandrapur, Maharashtra', '1998-09-14', 'Male', 'Finance', 8.3, 'A'),
(8, 'Sunita Pandey', 'Arts', 'sunita.pandey@email.com', 9812345678, 'Bokaro, Jharkhand', '2002-05-21', 'Female', 'Literature', 6.2, 'C'),
(9, 'Karan Mehta', 'Engineering', 'karan.mehta@email.com', 9944556677, 'Surat, Gujarat', '2001-06-18', 'Male', 'Civil', 7.8, 'B'),
(10, 'Neha Patel', 'Science', 'neha.patel@email.com', 9966778899, 'Vadodara, Gujarat', '2000-10-02', 'Female', 'Biology', 8.7, 'A');

-- Student Information Retrieval- Develop a query to retrieve all students' information from the "student_table" and sort them in descending order by their grade.

SELECT * FROM student_table
ORDER BY Grade DESC;

-- Query for Male Students- This will now retrieve male students based on the correct Student_id.

SELECT * FROM student_table
WHERE Gender = 'Male';

-- Query for Students with GPA Less Than 5.0- This query will fetch students with a GPA less than 5.0.

SELECT * FROM student_table
WHERE GPA < 5.0;

-- Update Student Email and Grade- updating email and grade for a student with a specific Student_id, for example, Student_id = 3.

UPDATE student_table
SET email_id = 'sandy.ydv@email.com', Grade = 'B'
WHERE Student_id = 3;

Select * from student_table
WHERE Student_id = 3;

-- Query for Students with Grade “B”- Retrieve the names and ages of all students with a grade of “B.”

	
SELECT Stu_name, TIMESTAMPDIFF(YEAR , Date_of_birth, CURDATE()) AS Age
FROM student_table
WHERE Grade = 'B';

-- Grouping and Calculation- This query groups students by Department and Gender, calculating the average GPA for each combination.

SELECT Department, Gender, AVG(GPA) AS Average_GPA
FROM student_table
GROUP BY Department, Gender;

-- Table Renaming- Rename the student_table to student_info correctly.

ALTER TABLE student_table
RENAME TO student_info;

SELECT * FROM student_info;

-- Retrieve Student with Highest GPA- Retrieve the name of the student with the highest GPA from student_info.

SELECT Stu_name
FROM student_info
ORDER BY GPA DESC
LIMIT 1;








