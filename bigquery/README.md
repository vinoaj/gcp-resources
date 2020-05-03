# Google BigQuery

## Datasets
- [BigQuery public datasets](https://pantheon.corp.google.com/marketplace/browse?filter=solution-type:dataset)

## Concepts
- [What is a slot?](https://cloud.google.com/bigquery/docs/slots)
- [DML: what happens under the hood and best practices](https://cloud.google.com/blog/products/data-analytics/dml-without-limits-now-in-bigquery)

## Machine Learning (BigQuery ML)
- [How to do time series forecasting in BigQuery](https://medium.com/@lakshmanok/how-to-do-time-series-forecasting-in-bigquery-af9eb6be8159) ([corresponding notebook](https://github.com/GoogleCloudPlatform/bigquery-oreilly-book/blob/master/blogs/bqml_arima/bqml_arima.ipynb))
- [Using BigQuery (and BigQuery ML) from Kubeflow Pipelines](https://medium.com/google-cloud/using-bigquery-and-bigquery-ml-from-kubeflow-pipelines-991a2fa4bea8)

## Training
- [BigQuery quests on Qwiklabs](https://google.qwiklabs.com/catalog?keywords=bigquery)

## Security
- [Data deletion and retention with crypto-shredding (Part 1)](https://medium.com/google-cloud/bigquery-encryption-functions-part-i-data-deletion-retention-with-crypto-shredding-7085ecf6e53f), [(Part 2)](https://medium.com/google-cloud/end-to-end-crypto-shredding-part-ii-data-deletion-retention-with-crypto-shredding-a67f5300a8c8)

## Tools
- [bigquery-utils](https://github.com/GoogleCloudPlatform/bigquery-utils): Useful UDFs, scripts, and views for working with Google BigQuery
- [Open feature requests]( https://issuetracker.google.com/issues?q=componentid:187149%20status:open): This provides a glimpse into what's coming up in Google BigQuery
- [BigQuery Query Plan Visualizer](https://bqvisualiser.appspot.com/): provides a web application which can be used to visualise the flow of execution stages within a BigQuery job. This may be useful in identifying problematic stages and provides greater usability for large query plans than the default query plan explanation in the Google Cloud Console. The source code is available [here](https://github.com/smeyn/professional-services/tree/master/tools/bq-visualizer).
- [BigQuery View Analyser (by Servian)](https://github.com/servian/bigquery-view-analyzer)

## Frameworks
- [ZetaSQL](https://github.com/google/zetasql) is the SQL parsing engine that BigQuery utilises. ZetaSQL defines a language (grammar, types, data model, and semantics) as well as a parser and analyzer. It is not itself a database or query engine. Instead it is intended to be used by multiple engines wanting to provide consistent behavior for all semantic analysis, name resolution, type checking, implicit casting, etc.
- [Tink](https://github.com/google/tink) is Google's multi-language, cross-platform, open source library that provides cryptographic APIs that are secure, easy to use correctly, and hard(er) to misuse. BigQuery's [AEAD (authenticated encryption with associated data) Encryption Functions](https://cloud.google.com/bigquery/docs/reference/standard-sql/aead_encryption_functions) use Tink under the hood. 

## Monitoring
- [Taking a practical approach to BigQuery slot usage analysis](https://cloud.google.com/blog/products/data-analytics/monitoring-resource-usage-in-a-cloud-data-warehouse)

There are 3 primary sources of data that allow you to evaluate slot usage and queries.

### System tables (`INFORMATION_SCHEMA`)
- Details are available within one second of job completion
- Job data is retained for 180 days. If you want to maintain a backup of historical data, use scheduled queries to export the data to a partitioned table. 

### Stackdriver
- Allows for real-time slot usage monitoring
- [How to setup BigQuery monitoring](https://cloud.google.com/bigquery/docs/monitoring)

### BigQuery audit logs
- Lookup data in the Stackdriver Logging interface; and/or
- Export audit logs to a BigQuery sink and query that data

## Backup and Disaster Recovery
- [How to backup BigQuery datasets and tables to Google Cloud Storage](https://medium.com/google-cloud/how-to-backup-a-bigquery-table-or-dataset-to-google-cloud-storage-and-restore-from-it-6ef7eb322c6d)

## Migrating to BigQuery
- [Redshift and S3 migration to BigQuery](https://cloud.google.com/blog/products/data-analytics/redshift-and-s3-data-warehouse-migration-tools)
- [How do I move data from MySQL to BigQuery?](https://cloud.google.com/blog/products/data-analytics/how-to-move-data-from-mysql-to-bigquery): CDC methodology using Debezium -> Pub/Sub -> Dataflow -> BigQuery

## Articles by Googlers
- [10 top tips: Unleash your BigQuery superpowers](https://cloud.google.com/blog/products/data-analytics/top-bigquery-superpowers-for-cloud-data-analytics)
- [15 things you didn't know about BigQuery (2016)](https://medium.com/google-cloud/15-awesome-things-you-probably-didnt-know-about-google-bigquery-6654841fa2dc): an oldie, but a goodie.

## Articles by enthusiasts
- [Pro tips for Google Cloud Dataflow & BigQuery](https://polleyg.dev/posts/data-engineering-tips/)
- [BigQuery dbt: modern problems require modern solutions](https://medium.com/weareservian/bigquery-dbt-modern-problems-require-modern-solutions-b40faedc8aaf)

## Case Studies
- [Modernizing Twitter's ad engagement analytics platform](https://cloud.google.com/blog/products/data-analytics/modernizing-twitters-ad-engagement-analytics-platform): On-prem HDFS -> GCS -> Dataflow -> BQ + BigTable
- [How Twitter's Data Analytics Platform team uses BigQuery](https://blog.twitter.com/engineering/en_us/topics/infrastructure/2019/democratizing-data-analysis-with-google-bigquery.html)