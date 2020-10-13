-- Get the name of all teachers that performed an assistance request during a cohort.

SELECT teachers.name as teacher, cohorts.name as cohort
FROM teachers
INNER JOIN assistance_requests ON teachers.id = teacher_id
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;

