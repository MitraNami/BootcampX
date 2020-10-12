-- Get the total amount of time that a student has spent on all assignments.

SELECT sum(duration) as total_duration
FROM assignment_submissions
INNER JOIN students ON students.id = student_id
WHERE name ='Ibrahim Schimmel';
