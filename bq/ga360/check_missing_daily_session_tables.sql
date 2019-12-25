SELECT
  *
FROM (
  SELECT
    parse_DATE("%Y-%m-%d",
      CONCAT(SUBSTR(table_id, 13,4),'-',SUBSTR(table_id, 17,2),'-',SUBSTR(table_id, 19,2))) AS tid
  FROM
    `project.dataset.__TABLES__`
  WHERE
    table_id LIKE 'ga_sessions_2%') t
RIGHT JOIN (
  SELECT
    day
  FROM
    UNNEST( GENERATE_DATE_ARRAY(DATE('2010-01-01'), CURRENT_DATE(), INTERVAL 1 DAY) ) AS day) d
ON
  t.tid = d.day
ORDER BY
  tid
