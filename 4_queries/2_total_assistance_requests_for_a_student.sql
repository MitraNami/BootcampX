-- Get the total number of assistance_requests for a student.

SELECT count(assistance_requests.*) as total_assistances, students.name as name
FROM assistance_requests
INNER JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
