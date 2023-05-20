WITH bytes_summary AS (
  SELECT table_schema 
    , SUM(total_logical_bytes) AS total_logical_bytes
    , SUM(total_physical_bytes) AS total_physical_bytes
    , SUM(long_term_logical_bytes) AS total_long_term_logical_bytes
    , SUM(long_term_physical_bytes) AS total_long_term_physical_bytes
    , SAFE_DIVIDE(SUM(total_physical_bytes), SUM(total_logical_bytes)) AS total_compression_ratio
    , SAFE_DIVIDE(SUM(long_term_physical_bytes), SUM(long_term_logical_bytes)) AS long_term_compression_ratio
  FROM region-us.INFORMATION_SCHEMA.TABLE_STORAGE
  GROUP BY table_schema
  ORDER BY total_long_term_logical_bytes DESC
),
imputed_costs AS (
  SELECT *
    , total_long_term_logical_bytes / power(1024, 3) * 0.01 AS cost_lt_logical_bytes
    , total_long_term_physical_bytes / power(1024, 3) * 0.02 AS cost_lt_physical_bytes
  FROM bytes_summary
)
SELECT *
  , (imputed_costs.cost_lt_logical_bytes - imputed_costs.cost_lt_physical_bytes) AS cost_savings
  , SAFE_DIVIDE((cost_lt_logical_bytes - cost_lt_physical_bytes), imputed_costs.cost_lt_logical_bytes) AS pct_savings
FROM imputed_costs
-- WHERE table_schema LIKE "%benchmark%"
ORDER BY pct_savings DESC
