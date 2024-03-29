# StandardSQL
-- Query link: https://console.cloud.google.com/bigquery?sq=213778380743:d8ffa1a327554b13bccf9c1f840aa377

-- Look up Google Cloud release notes for the last 30 days, filtered by products of interest.
-- The release notes are filtered by applying regular expressions (in the "regexes" CTE)
--   against the "product_name" column.
-- If you have new products of interest, add the regular expression filter to the "regexes" CTE

WITH regexes AS (
    -- We could consolidate this into a single regular expression. 
    -- However, we are breaking it up into separate regular expressions for
    --   easier readability & management
    SELECT "^(AI Platform.*)$" AS regex UNION ALL
    SELECT "^(BigQuery.*)$" UNION ALL
    SELECT "^(Cloud Bigtable)$" UNION ALL
    SELECT "^(Cloud Composer)$" UNION ALL
    SELECT "^(Cloud Data Fusion)$" UNION ALL
    SELECT "^(Cloud Data Loss Prevention)$" UNION ALL
    SELECT "^(Cloud SQL.*)$" UNION ALL
    SELECT "^(Cloud Spanner)$" UNION ALL
    SELECT "^(Cloud Storage)$" UNION ALL
    SELECT "^(Cloud TPU)$" UNION ALL
    SELECT "^(Data Catalog)$" UNION ALL
    SELECT "^(Dataflow)$" UNION ALL
    SELECT "^(Dataproc.*)$" UNION ALL
    SELECT "^(Datastore)$" UNION ALL
    SELECT "^(Deep Learning.*)$" UNION ALL
    SELECT "^(Notebooks.*)$" UNION ALL
    SELECT "^(Pub/Sub.*)$" UNION ALL
    SELECT "^(Vertex AI.*)$"
)

SELECT product_name, product_version_name, published_at, release_note_type, description
FROM `bigquery-public-data.google_cloud_release_notes.release_notes`
    INNER JOIN regexes r
    ON REGEXP_CONTAINS(product_name, r.regex)
WHERE published_at >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
ORDER BY product_name, published_at DESC