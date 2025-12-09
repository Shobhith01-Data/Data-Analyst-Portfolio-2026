/*day 01 */
/* 011 used 'INSERT INTO' Query*/
use schoolmanagement;
INSERT INTO Students 
(first_name, last_name, gender, age, dob, email, phone, state, marks)
VALUES
('Manoj', 'Sharma', 'Male', 23, '2002-05-12', 'manoj.sharma@example.com',  9876689120, 'Andhra Pradesh', 98.7)
;
select*from schoolmanagement.students;

/* 012 used 'COUNT' function*/
select count(student_id)
from schoolmanagement.students;

select count(age)
from schoolmanagement.students
where age<20;

/* 012 used 'AVG' function*/
select avg(marks)
from schoolmanagement.students;
 
 
/* day 02 */
/* 013 used 'SUM' function */
select sum(marks)
from schoolmanagement.students;

/* 014 used 'MAX' function */
select max(marks) as HighestMarks 
from schoolmanagement.students;

/* 015 used 'GROUP BY' functionality */
select count(Student_id), state
from schoolmanagement.students
group by state ;

select count(student_id), age
from schoolmanagement.students
group by age
order by age asc;

/* 016 used 'HAVING' functionality*/
select first_name, sum(marks)
from schoolmanagement.students
group by first_name
having sum(marks)>85;

select first_name,sum(age)
from schoolmanagement.students
group by first_name
having sum(age)>=21
order by sum(age) asc;

/* 017.1 used 'ORDER BY' function*/
select count(student_id), age
from schoolmanagement.students
group by age
order by count(student_id) desc;

/* 017.2 used 'ORDER BY' function*/
select count(student_id), age
from schoolmanagement.students
group by age
order by age;

/* 018 used 'NULL VALUE' Query*/
/* 'IS NULL"*/
select count(marks) first_name
from schoolmanagement.students
where marks is null;

/* 'IS NOT NULL'*/
select count(marks) first_name
from schoolmanagement.students
where marks is not null;

/* 019 used 'UPDATE' Command*/
UPDATE schoolmanagement.students
Set state = 'Andhra pradesh'
where Student_id =21;

update schoolmanagement.students
set first_name = 'Drishali', last_name ='Rai'
where Student_id=2;

update schoolmanagement.students
set email='drishali.rai@example.com'
where first_name='Drishali';

select*from schoolmanagement.students;

/* for cross checking*/
select Count(Student_id), state
from schoolmanagement.students
group by state
Order by count(student_id) asc;

/*  020 used 'DELETE' Command*/

set sql_safe_updates=0;
delete from schoolmanagement.students
where State='Gujarat';
set sql_safe_updates=1;

/* 21 used 'IN ORDER' function*/
select count(student_id) as total_student, state
from schoolmanagement.students
where State in ('Karnataka','Kerala','Tamil Nadu')
group by state 


order by total_student;

/* 22 Used 'COLUMN ALLIAS' */
select Student_id as id
from schoolmanagement.students;
