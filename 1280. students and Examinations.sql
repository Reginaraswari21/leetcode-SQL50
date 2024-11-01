# Write your MySQL query statement below
select students.student_id, students.student_name, subjects.subject_name, ifnull(count(examinations.student_id),0) as attended_exams
from students cross join subjects left join examinations
on examinations.student_id = students.student_id and examinations.subject_name=subjects.subject_name
group by student_id, student_name, subject_name
order by student_id, subject_name