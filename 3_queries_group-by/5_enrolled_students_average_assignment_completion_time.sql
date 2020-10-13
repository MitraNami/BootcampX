-- Get currently enrolled students' average assignment completion time.

SELECT students.name as student, avg(assignment_submissions.duration) as average_submission_duration
FROM assignment_submissions
INNER JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_submission_duration DESC;
