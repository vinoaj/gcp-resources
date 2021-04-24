# StandardSQL
SELECT
 -- Express time periods in Sydney time
 EXTRACT(DAYOFWEEK FROM DATETIME(period_start, "Australia/Sydney")) AS day_of_week
 , EXTRACT(HOUR FROM DATETIME(period_start, "Australia/Sydney")) AS hour_of_day
 , EXTRACT(MINUTE FROM DATETIME(period_start, "Australia/Sydney")) AS minute_of_hour
 -- Separate between jobs run by a service account and non-service accounts
 , IF(REGEXP_CONTAINS(user_email, r"@.*\.iam\.gserviceaccount.com"), "scheduled_job", "adhoc_job") AS job_type
 , SUM(period_slot_ms) AS total_slot_ms
 -- Slots per minute = total_slot_ms / (1000ms * 60secs)
 , SUM(period_slot_ms)/(1000*60) AS slots_per_min
 , SUM(total_bytes_processed/POW(2,40)) AS total_TBs_processed
FROM
`region-us`.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_PROJECT
WHERE
 -- Query last 14 days
 period_start BETWEEN TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 14 DAY) AND CURRENT_TIMESTAMP()
 and job_type = 'QUERY'
GROUP BY day_of_week, hour_of_day, minute_of_hour, job_type
ORDER BY day_of_week, hour_of_day, minute_of_hour
