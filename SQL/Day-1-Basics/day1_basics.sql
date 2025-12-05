/* 01) used 'create' statement/command to create a database*/
create database schoolmanagement;

/* 02) created a table named Students*/
use schoolmanagement;
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    age INT CHECK (age >= 5 AND age <= 30),
    dob DATE NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    state VARCHAR(50),
    marks DECIMAL(5,2),
    is_active BOOLEAN DEFAULT TRUE,
    admission_date DATE DEFAULT (CURRENT_DATE)
);

/* 03) Inserted some records/value to the Students table using 'insert into' query*/ 
INSERT INTO Students 
(first_name, last_name, gender, age, dob, email, phone, state, marks)
VALUES
('Aarav', 'Sharma', 'Male', 20, '2005-03-14', 'aarav.sharma@example.com', '9876543210', 'Karnataka', 87.50),
('Diya', 'Verma', 'Female', 19, '2006-07-22', 'diya.verma@example.com', '9876501234', 'Kerala', 91.20),
('Rohan', 'Kulkarni', 'Male', 21, '2004-11-05', 'rohan.k@example.com', '9876512345', 'Maharashtra', 78.30),
('Meera', 'Nair', 'Female', 18, '2007-02-10', 'meera.nair@example.com', '9876523456', 'Tamil Nadu', 84.90),
('Aditya', 'Rao', 'Male', 22, '2003-04-19', 'aditya.rao@example.com', '9876534567', 'Andhra Pradesh', 73.40),
('Kavya', 'Shetty', 'Female', 20, '2005-09-30', 'kavya.shetty@example.com', '9876545678', 'Karnataka', 89.00),
('Nishant', 'Reddy', 'Male', 23, '2002-01-15', 'nishant.reddy@example.com', '9876556789', 'Telangana', 68.75),
('Sneha', 'Iyer', 'Female', 19, '2006-05-09', 'sneha.iyer@example.com', '9876567890', 'Kerala', 92.10),
('Yuvraj', 'Singh', 'Male', 21, '2004-08-26', 'yuvraj.singh@example.com', '9876578901', 'Punjab', 80.00),
('Aisha', 'Khan', 'Female', 20, '2005-12-01', 'aisha.khan@example.com', '9876589012', 'Uttar Pradesh', 88.55),
('Vikas', 'Patil', 'Male', 22, '2003-03-11', 'vikas.patil@example.com', '9876590123', 'Maharashtra', 75.25),
('Ritu', 'Jain', 'Female', 19, '2006-10-23', 'ritu.jain@example.com', '9876601234', 'Rajasthan', 90.60),
('Harsh', 'Gupta', 'Male', 20, '2005-06-17', 'harsh.g@example.com', '9876612345', 'Delhi', 85.10),
('Neha', 'Sinha', 'Female', 18, '2007-04-12', 'neha.sinha@example.com', '9876623456', 'Bihar', 95.40),
('Sanjay', 'Pillai', 'Male', 23, '2002-09-07', 'sanjay.pillai@example.com', '9876634567', 'Kerala', 70.50),
('Priya', 'Deshmukh', 'Female', 20, '2005-01-29', 'priya.deshmukh@example.com', '9876645678', 'Maharashtra', 83.75),
('Aryan', 'Mehta', 'Male', 21, '2004-02-18', 'aryan.mehta@example.com', '9876656789', 'Gujarat', 77.40),
('Tara', 'Mukherjee', 'Female', 19, '2006-11-16', 'tara.mukherjee@example.com', '9876667890', 'West Bengal', 94.20),
('Raghav', 'Malhotra', 'Male', 22, '2003-05-25', 'raghav.m@example.com', '9876678901', 'Delhi', 82.00),
('Shalini', 'Pandey', 'Female', 20, '2005-03-06', 'shalini.p@example.com', '9876689012', 'Uttar Pradesh', 88.10);

/* 04 ran 'select' query */
select* from students;

/* 05 used 'where' clause */
select*from students 
where age <= 22;

/* 06 used 'AND' operator*/
select first_name, gender, age
from students 
where first_name='Diya' and last_name='Verma';

/* 07 used and operator*/
select first_name, gender, age
from students 
where age<= 19 and gender='Female';

/* 08 used 'OR' operator*/
select first_name, gender, age, state
from students 
where age=20 or state='Karnataka';

/* 09.1 used 'NOT' & 'AND' operator*/
 select first_name, gender, age, state
from students 
where not age>=20 and not state='Kerala';

/* 09.2 used 'NOT' & 'AND' operator*/
select first_name, gender, age, state
from students 
where not age=20 and state='Kerala';

/* 10 used 'NOT & 'OR' operator*/
select first_name, gender, age, state
from students
where not age=20 or not state='Kerala';
