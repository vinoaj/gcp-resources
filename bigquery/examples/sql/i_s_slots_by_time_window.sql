WITH slot_info AS (
  SELECT
    /*change 5 to whatever tumble (measured in seconds) is needed this will also have to be changed in the GROUP BY*/
    SUM(total_slot_ms / TIMESTAMP_DIFF(end_time,start_time,MILLISECOND)) AS slot_count ,
    bqutil.fn.ts_tumble(creation_time, 5) AS tumble_window,
    DATE(creation_time) AS creation_date
  FROM
    `region-us`.INFORMATION_SCHEMA.JOBS_BY_PROJECT
  WHERE
    total_slot_ms IS NOT NULL
    AND end_time IS NOT NULL
    AND start_time IS NOT NULL 
    /*change the number 30 to whatever historical range needed*/
    AND CAST(start_time AS DATE) >= current_date - 30
  GROUP BY
    bqutil.fn.ts_tumble(creation_time, 5),
    DATE(creation_time) 
)
SELECT
  MAX(slot_count) AS max_slot_count,
  MIN(slot_count) AS min_slot_count,
  AVG(slot_count) AS average_slot_count,
  creation_date
FROM slot_info
GROUP BY creation_date;
