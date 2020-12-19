# Google BigQuery

## Datasets
- [BigQuery public datasets](https://pantheon.corp.google.com/marketplace/browse?filter=solution-type:dataset)

## Concepts
- [BigQuery explained: Blog series](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-explained-blog-series)
- [What is a slot?](https://cloud.google.com/bigquery/docs/slots)
- [DML: what happens under the hood and best practices](https://cloud.google.com/blog/products/data-analytics/dml-without-limits-now-in-bigquery)
- [BigQuery Explained: Data Manipulation (DML)](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-explained-data-manipulation-dml)
- [10 top tips: Unleash your BigQuery superpowers](https://cloud.google.com/blog/products/data-analytics/top-bigquery-superpowers-for-cloud-data-analytics)
- [15 things you didn't know about BigQuery (2016)](https://medium.com/google-cloud/15-awesome-things-you-probably-didnt-know-about-google-bigquery-6654841fa2dc): an oldie, but a goodie.

## Machine Learning (BigQuery ML)
- [The best of both worlds: Calling Auto ML from BigQuery](https://towardsdatascience.com/the-best-of-both-worlds-calling-auto-ml-from-bigquery-9dfd433a45d6)
- [How to do time series forecasting in BigQuery](https://medium.com/@lakshmanok/how-to-do-time-series-forecasting-in-bigquery-af9eb6be8159) ([corresponding notebook](https://github.com/GoogleCloudPlatform/bigquery-oreilly-book/blob/master/blogs/bqml_arima/bqml_arima.ipynb))
- [Stack Overflow in 2023: Predicting with ARIMA and BigQuery](https://towardsdatascience.com/stack-overflow-future-trends-predicting-with-arima-and-bigquery-77d330833329)
- [Using BigQuery (and BigQuery ML) from Kubeflow Pipelines](https://medium.com/google-cloud/using-bigquery-and-bigquery-ml-from-kubeflow-pipelines-991a2fa4bea8)
- [How to export a BigQuery ML model and deploy it for online prediction](https://towardsdatascience.com/how-to-export-a-bigquery-ml-model-and-deploy-it-for-online-prediction-a7e4d44c4c93)

## SQL
- [How to use Dynamic SQL in BigQuery](https://towardsdatascience.com/how-to-use-dynamic-sql-in-bigquery-8c04dcc0f0de)

## Training
- [BigQuery quests on Qwiklabs](https://google.qwiklabs.com/catalog?keywords=bigquery)

## Security
- [Data deletion and retention with crypto-shredding (Part 1)](https://medium.com/google-cloud/bigquery-encryption-functions-part-i-data-deletion-retention-with-crypto-shredding-7085ecf6e53f), [(Part 2)](https://medium.com/google-cloud/end-to-end-crypto-shredding-part-ii-data-deletion-retention-with-crypto-shredding-a67f5300a8c8)

## Tools
- [bigquery-utils](https://github.com/GoogleCloudPlatform/bigquery-utils): Useful UDFs, scripts, and views for working with Google BigQuery
- [Open feature requests]( https://issuetracker.google.com/issues?q=componentid:187149%20status:open): This provides a glimpse into what's coming up in Google BigQuery
- [BigQuery Query Plan Visualizer](https://bqvisualiser.appspot.com/): provides a web application which can be used to visualise the flow of execution stages within a BigQuery job. This may be useful in identifying problematic stages and provides greater usability for large query plans than the default query plan explanation in the Google Cloud Console. The source code is available [here](https://github.com/smeyn/professional-services/tree/master/tools/bq-visualizer).
- [BigQuery View Analyser (by Servian)](https://github.com/servian/bigquery-view-analyzer)
- [Fake PII table creator](https://github.com/mesmacosta/bq-fake-pii-table-creator): scripts to generate tables with fake PII (e.g. names, phone numbers, etc.). Useful for testing out DLP.

## Frameworks
- [ZetaSQL](https://github.com/google/zetasql) is the SQL parsing engine that BigQuery utilises. ZetaSQL defines a language (grammar, types, data model, and semantics) as well as a parser and analyzer. It is not itself a database or query engine. Instead it is intended to be used by multiple engines wanting to provide consistent behavior for all semantic analysis, name resolution, type checking, implicit casting, etc.
- [Tink](https://github.com/google/tink) is Google's multi-language, cross-platform, open source library that provides cryptographic APIs that are secure, easy to use correctly, and hard(er) to misuse. BigQuery's [AEAD (authenticated encryption with associated data) Encryption Functions](https://cloud.google.com/bigquery/docs/reference/standard-sql/aead_encryption_functions) uses Tink under the hood. 

## Monitoring
- [Taking a practical approach to BigQuery slot usage analysis](https://cloud.google.com/blog/products/data-analytics/monitoring-resource-usage-in-a-cloud-data-warehouse)

There are 3 primary sources of data that allow you to evaluate slot usage and queries.

### System tables (`INFORMATION_SCHEMA`)
- Details are available within one second of job completion
- Job data is retained for 180 days. If you want to maintain a backup of historical data, use scheduled queries to export the data to a partitioned table. 
- [Sample `INFORMATION_SCHEMA` queries](https://github.com/GoogleCloudPlatform/training-data-analyst/blob/master/courses/data-engineering/demos/information_schema.md)
- [BigQuery System Tables Reports (Data Studio)](https://github.com/GoogleCloudPlatform/bigquery-utils/tree/master/dashboards/system_tables)
- [BigTips: INFORMATION_SCHEMA Views in BigQuery](https://medium.com/google-cloud/bigtips-information-schema-views-in-bigquery-2f0781766bb4)
- [BigTips: INFORMATION_SCHEMA Views in BigQuery, Part 2, with extra Scripts and Procedures!](https://medium.com/google-cloud/bigtips-information-schema-views-in-bigquery-part-2-with-extra-scripts-and-procedures-53893203e35)

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
- [Database migration: Concepts and principles](https://cloud.google.com/solutions/database-migration-concepts-principles-part-1)
- [Database replication to BigQuery using change data capture](https://cloud.google.com/solutions/database-replication-to-bigquery-using-change-data-capture)

## dbt
- [Loading and transforming data into BigQuery using dbt](https://medium.com/@lakshmanok/loading-and-transforming-data-into-bigquery-using-dbt-65307ad401cd)
- [BigQuery dbt: modern problems require modern solutions](https://medium.com/weareservian/bigquery-dbt-modern-problems-require-modern-solutions-b40faedc8aaf)

## Pricing
- [Choosing between BigQuery on-demand and flat rate pricing](https://cloud.google.com/blog/products/data-analytics/choosing-bigquery-pricing)
- [Optimize BigQuery costs with Flex Slots](https://cloud.google.com/blog/products/data-analytics/optimize-bigquery-costs-with-flex-slots)
    - ![](https://storage.googleapis.com/gweb-cloudblog-publish/images/3_slots_and_on-demand.max-1200x1200.jpg)
- [Effectively using BigQuery Reservations](https://cloud.google.com/blog/products/data-analytics/effectively-using-bigquery-reservations)
- [How to right-size your flat-rate and flex slots reservations in BigQuery](https://medium.com/google-cloud/how-to-move-from-on-demand-pricing-to-reservations-in-bigquery-65552cbebd45)
- [Principles of Cost Optimization (PDF)](https://services.google.com/fh/files/misc/understanding_the_principles_of_cost_optimization_2020_whitepaper_google_cloud.pdf)

### Pricing best practices
- The recommended best practice for BigQuery Reservations is to maintain a dedicated project for administering the reservations.

## Guides & HowTos
- [Using BigQuery DML & External Temporary Tables To Perform Realtime Reformatting Inserts For Television News Ngrams](https://blog.gdeltproject.org/using-bigquery-dml-external-temporary-tables-to-perform-realtime-reformatting-inserts-for-television-news-ngrams/)
- [Building a Data Platform to Enable Analytics and AI-Driven Innovation](https://medium.com/swlh/building-a-data-platform-to-enable-analytics-and-ai-driven-innovation-1bd95e37efb9)
- [How fleet management gets easier with smart analytics on Google Cloud](https://cloud.google.com/blog/products/data-analytics/interactive-smart-analytics-demo-for-transportation)
- [What’s the weather like? Using Colab to get more out of BigQuery](https://cloud.google.com/blog/products/data-analytics/whats-the-weather-like-using-colab-to-get-more-out-of-bigquery)

## Case Studies
- [Modernizing Twitter's ad engagement analytics platform](https://cloud.google.com/blog/products/data-analytics/modernizing-twitters-ad-engagement-analytics-platform): On-prem HDFS -> GCS -> Dataflow -> BQ + BigTable
- [How Twitter's Data Analytics Platform team uses BigQuery](https://blog.twitter.com/engineering/en_us/topics/infrastructure/2019/democratizing-data-analysis-with-google-bigquery.html)
- [How Unity analyzes petabytes of data in BigQuery for reporting and ML initiatives](https://cloud.google.com/blog/products/data-analytics/cloud-data-warehouse-for-ml-advanced-analytics)
- [A tale of two data warehouses — News UK’s data platform migration to Google Cloud (Part 1)](https://medium.com/news-uk-technology/a-tale-of-two-data-warehouses-newsuks-data-platform-migration-to-google-cloud-part-1-be1bc0ff09d8) [(Part 2)](https://medium.com/news-uk-technology/a-tale-of-two-data-warehouses-news-uks-data-platform-migration-to-google-cloud-part-2-2aae617899a0)
- [MLB's fan data team hits it out of the park with data warehouse modernization](https://cloud.google.com/blog/products/data-analytics/mlb-moves-to-bigquery-data-warehouse)
- [MLB uses Google Cloud Smart Analytics platform to scale data insights](https://cloud.google.com/blog/products/data-analytics/how-mlb-is-using-data-analytics-on-google-cloud)

## Compare
- [BigQuery vs Redshift vs Snowflake](https://poplindata.com/data-warehouses/2020-database-showdown-bigquery-vs-redshift-vs-snowflake/)
- [BigQuery vs Snowflake vs Vertica](https://cloud.google.com/blog/products/data-analytics/e-commerce-data-warehouse-migration)
![BigQuery vs Snowflake vs Vertica](https://storage.googleapis.com/gweb-cloudblog-publish/images/Trendyol_results.max-900x900.jpg)
- [Guidance on evaluating data warehouses](https://medium.com/@vtereshko/data-warehouse-evaluations-should-take-a-page-out-of-sports-e5b5bfe6279a): TCP-* benchmark tests just aren't enough
- [Evaluating separation of storage and compute](https://medium.com/@vtereshko/approximatish-separation-of-storage-and-compute-in-data-warehouses-b0a1329569e4)

## History
- [Meet the BigQuery founding engineers](https://www.youtube.com/watch?v=ngaUTCQfvYA)
