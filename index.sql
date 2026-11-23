CREATE DATABASE university_db ;


CREATE TABLE students (
student_id INT PRIMARY KEY,
    fullname VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    age INT,
    registrationdate1 DATE  DEFAULT CURRENT ,
    registrationdate2 TIME DEFALUT,
    registrationdate3 DATETIME DEFAULT ,
    
    CONSTRAINT chekkk1 CHECK (age>18) 




) ;


ALTER TABLE students
ADD CONSTRAINT  chekk2 CHECK (fullname IS NOT NULL);



DROP TABLE students ;




INSERT INTO students(student_id,fullname,email,age) VALUES (

2,"testi1","hhadichaito60@gmail.com", 25 



) ;






DROP DATABASE university_db ;

DROP TABLE students ;

create database assignment17 ;



CREATE TABLE departments (

dept_id0 INT PRIMARY KEY ,
    dept_name0 VARCHAR(55) NOT NULL


) ;






CREATE TABLE courses (

course_id0 INT PRIMARY KEY ,
    course_name VARCHAR(60) NOT NULL,
    credits INT NOT NULL DEFAULT 3,
    dept_id1 INT,
    FOREIGN KEY (dept_id1) REFERENCES departments(dept_id0 ) ON DELETE CASCADE


) ;





CREATE TABLE students (

std_ID0 INT PRIMARY KEY,
    student_name VARCHAR(44) NOT NULL



) ;





CREATE TABLE enrollments (

    enrollemntid0 INT PRIMARY KEY,
    forid01 INT ,
    Forid02 INT ,
    FOREIGN KEY (forid01) REFERENCES students(std_ID0 ) ON DELETE CASCADE,
    FOREIGN KEY (forid02) REFERENCES courses(course_id0  ) ON DELETE CASCADE
    


) ;



CREATE TABLE health_records (

 record_id0 INT PRIMARY KEY AUTO_INCREMENT,
    forid1 INT ,
    blood_group VARCHAR(5),
    FOREIGN KEY (forid1) REFERENCES students(std_ID0 ) ON DELETE CASCADE


) ;




ALTER TABLE departments;

INSERT INTO departments VALUES 
(1,"computer science")
,(2,"mathematics")
,(3,"physics")
;


ALTER TABLE courses;
INSERT INTO courses VALUES
(010,"database ssystems", 4 ,1)
,(011,"algorithms", 3 ,1)
,(012,"calcus", 4 ,2)
,(013,"quantum mechanics", 5 ,3)
;






ALTER TABLE students
;INSERT INTO students VALUES 
(900,"alice")
,(901,"bob")
,(902,"charlie")
,(903,"samy")
,(904,"eva");











ALTER TABLE enrollments;

INSERT INTO enrollments VALUES 
(1,900,10)
,(2,900,11)
,(3,901,10)
,(4,902,11)
,(5,902,12)
,(6,903,12)
,(7,903,13)

;





ALTER TABLE health_records;

INSERT INTO health_records VALUES 

(NULL,900,"a+")
,(NULL,901,"B+")
,(NULL,902,"O-")
,(NULL,903,"aB+")
,(NULL,904,"a-")


;