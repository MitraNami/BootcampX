-- Get the cohort with the longest average duration of assistance requests.

SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_time 
FROM assistance_requests
INNER JOIN students ON assistance_requests.student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;