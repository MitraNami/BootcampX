-- Get the students whoseaverage time it takes to complete an assignment is less than the average estimated time 
-- it takes to complete an assignment.

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, 
avg(assignments.duration) as average_estimated_duration
FROM students
INNER JOIN assignment_submissions ON students.id = student_id
INNER JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;