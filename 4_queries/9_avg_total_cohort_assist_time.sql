SELECT avg(total_duration) as average_total_duration 
FROM (
  SELECT cohorts.name as name, sum(completed_at - started_at) as total_duration
  FROM assistance_requests 
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) as total_durations
;