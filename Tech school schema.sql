CREATE DATABASE Tech_School;
USE Tech_school;
CREATE TABLE Programs(
Program_id INT,
Course_name CHAR (90),
Duration_months INT,
About CHAR (250),
PRIMARY KEY (program_id)
);
USE Tech_school;
CREATE TABLE students (
Student_id INT,
First_name CHAR (90),
Last_name CHAR (90),
Email VARCHAR (90),
Phone VARCHAR (90),
Date_of_birth DATE,
Gender CHAR (90),
Enrollment_date DATE,
Program_id INT,
PRIMARY KEY (Student_id),
FOREIGN KEY (Program_id) REFERENCES programs (program_id) ON DELETE CASCADE
);
USE Tech_School;
CREATE TABLE Instructors (
Instructor_id INT,
First_name CHAR (90),
Last_name CHAR (90),
Email VARCHAR (90),
Phone VARCHAR (90),
Specialization CHAR (90),
PRIMARY KEY (instructor_id)
);
USE Tech_School;
CREATE TABLE Courses (
Course_id INT,
Instructor_id INT,
Credit_hours datetime,
Course_description CHAR (200),
PRIMARY KEY (Course_id),
FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id) ON DELETE CASCADE 
);
USE Tech_School;
CREATE TABLE Classes (
Class_id INT,
Course_id INT,
Instructor_id INT,
Start_date date,
End_date date,
CLassroom VARCHAR (90),
PRIMARY KEY (class_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);
USE Tech_School;
CREATE TABLE Assessments (
Assessment_id INT,
Class_id INT,
Assessment_type CHAR (90),
TEXT_Date date,
Total_marks INT,
PRIMARY KEY (Assessment_id),
FOREIGN KEY (Class_id) REFERENCES Classes(class_id) ON DELETE CASCADE
);
USE Tech_School;
CREATE TABLE Assessment_Results (
Result_id INT,
Assessment_id INT,
Student_id INT,
Score INT,
PRIMARY KEY (Result_id),
FOREIGN KEY (Student_id) REFERENCES Students(Student_id) ON DELETE CASCADE
);
ALTER TABLE students
ADD UNIQUE KEY (Email);
ALTER TABLE students
ADD UNIQUE KEY (phone);
ALTER TABLE instructors
ADD UNIQUE KEY (Email);
ALTER TABLE instructors
ADD UNIQUE KEY (phone);

ALTER TABLE students
DROP INDEX Email;

ALTER TABLE instructors
DROP INDEX Email;