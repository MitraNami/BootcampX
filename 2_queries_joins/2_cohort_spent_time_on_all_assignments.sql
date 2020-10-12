-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

SELECT sum(duration) as total_duration
FROM assignment_submissions
INNER JOIN students ON students.id = student_id
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';
