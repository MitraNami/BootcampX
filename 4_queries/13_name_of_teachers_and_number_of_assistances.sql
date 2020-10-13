-- Perform the same query as before, but include the number of assistances as well.

SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances
FROM teachers
INNER JOIN assistance_requests ON teachers.id = teacher_id
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;