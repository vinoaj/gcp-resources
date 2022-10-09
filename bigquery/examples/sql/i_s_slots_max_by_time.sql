SELECT
  FORMAT_DATETIME("%F %R", DATETIME (period_start)) AS time,
  MAX(period_slot_ms)/1000 AS max_slots
FROM `region-us`.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_PROJECT
WHERE job_creation_time > '2022-08-23'
  AND job_type = 'QUERY'
GROUP BY time
ORDER BY time DESC;
