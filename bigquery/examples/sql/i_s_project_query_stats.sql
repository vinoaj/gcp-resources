SELECT
  job_id,
  -- Total job time in number of seconds
  TIMESTAMP_DIFF(end_time, start_time, SECOND) AS query_time_secs,
  -- Total GB of data processed
  (total_bytes_processed / (1024 * 1024 * 1024)) AS total_bytes_processed_gb,
  -- Slots used = slot_ms / job_duration_ms
  SUM(total_slot_ms/TIMESTAMP_DIFF(end_time,start_time,MILLISECOND)) AS total_slots
FROM
  `region-us`.INFORMATION_SCHEMA.JOBS_BY_PROJECT
WHERE
  -- Look at partitions for the last X days
  start_time BETWEEN TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 DAY) AND CURRENT_TIMESTAMP()
  AND state = "DONE"
  AND REGEXP_CONTAINS(query, r"SELECT wiki, title")
  -- Only show scheduled queries
  -- AND REGEXP_CONTAINS(job_id, "^(scheduled_query_.*)$")
GROUP BY job_id, end_time, start_time, total_bytes_processed