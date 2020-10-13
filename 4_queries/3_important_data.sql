-- Get important data about each assistance request.

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment,
(completed_at - started_at) as duration
FROM assistance_requests
INNER JOIN teachers ON teacher_id = teachers.id
INNER JOIN students ON students.id = student_id
INNER JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;