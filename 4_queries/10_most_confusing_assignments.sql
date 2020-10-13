-- List each assignment with the total number of assistance requests with it.

SELECT assignmentS.id, name, day, chapter, count(assistance_requests.*) as total_requests
FROM assignmentS
INNER JOIN assistance_requests ON assignmentS.id = assignment_id
GROUP BY assignmentS.id
ORDER BY total_requests DESC;