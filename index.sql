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







