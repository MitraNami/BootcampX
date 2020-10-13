-- Get the average duration of assistance requests for each cohort.

SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_time 
FROM assistance_requests
INNER JOIN students ON assistance_requests.student_id = students.id
INNER JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;