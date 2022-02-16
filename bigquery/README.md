# Google BigQuery

## Architecture
- [Secure a BigQuery data warehouse that stores confidential data](https://cloud.google.com/architecture/confidential-data-warehouse-blueprint) (accompanying [Terraform scripts](https://github.com/GoogleCloudPlatform/terraform-google-secured-data-warehouse))
- [Data lineage systems for a data warehouse](https://cloud.google.com/architecture/architecture-concept-data-lineage-systems-in-a-data-warehouse)
- [Secure the pipeline from your data lake to your data warehouse](https://cloud.google.com/architecture/help-secure-the-pipeline-from-your-data-lake-to-your-data-warehouse)

## Datasets
- [BigQuery public datasets](https://pantheon.corp.google.com/marketplace/browse?filter=solution-type:dataset)

## Concepts
- [BigQuery explained: Blog series](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-explained-blog-series)
- [What is a slot?](https://cloud.google.com/bigquery/docs/slots)
- [In-memory query execution in Google BigQuery](https://cloud.google.com/blog/products/bigquery/in-memory-query-execution-in-google-bigquery)
- [DML: what happens under the hood and best practices](https://cloud.google.com/blog/products/data-analytics/dml-without-limits-now-in-bigquery)
- [BigQuery explained: Working with joins, nested & repeated data](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-explained-working-joins-nested-repeated-data)
- [BigQuery Explained: Data Manipulation (DML)](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-explained-data-manipulation-dml)
- [10 top tips: Unleash your BigQuery superpowers](https://cloud.google.com/blog/products/data-analytics/top-bigquery-superpowers-for-cloud-data-analytics)
- [15 things you didn't know about BigQuery (2016)](https://medium.com/google-cloud/15-awesome-things-you-probably-didnt-know-about-google-bigquery-6654841fa2dc): an oldie, but a goodie.
- [Colossus under the hood: a peek into Google’s scalable storage system](https://cloud.google.com/blog/products/storage-data-transfer/a-peek-behind-colossus-googles-file-system)
- [BigQuery Write API explained: An overview of the Write API](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-write-api-explained-overview-write-api)
- [BigQuery workload management best practices](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-workload-management-best-practices)
- [BigQuery admin reference guide: Resource Hierarchy](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-resource-hierarchy)
- [BigQuery admin reference guide: Tables & routines](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-tables-routines)
- [BigQuery Admin reference guide: Jobs & reservation model](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-jobs-reservation-model)
- [BigQuery Admin reference guide: Storage internals](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-storage)
- [BigQuery Admin reference guide: Query processing](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-query-processing)
- [BigQuery Admin reference guide: Query optimization](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-query-optimization)
- [BigQuery Admin reference guide: Data governance](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-data-governance)
- [BigQuery Admin reference guide: API landscape](https://cloud.google.com/blog/topics/developers-practitioners/bigquery-admin-reference-guide-api-landscape)
- [Building a data lakehouse on Google Cloud Platform](https://services.google.com/fh/files/misc/building-a-data-lakehouse.pdf) (whitepaper)

## Machine Learning (BigQuery ML)
- [Unsupervised anomaly detection for time series and non-time series data](https://cloud.google.com/blog/products/data-analytics/bigquery-ml-unsupervised-anomaly-detection)
- [Anomaly detection in time series data using BigQuery ML](https://lakshmanok.medium.com/anomaly-detection-in-time-series-data-using-bigquery-ml-b70e10a9f3ff)
- [How to build demand forecasting models with BigQuery ML](https://cloud.google.com/blog/topics/developers-practitioners/how-build-demand-forecasting-models-bigquery-ml) ([related notebook](https://github.com/GoogleCloudPlatform/analytics-componentized-patterns/tree/master/retail/time-series/bqml-demand-forecasting))
- [Churn prediction for game developers using Google Analytics 4 (GA4) and BigQuery ML](https://cloud.google.com/blog/topics/developers-practitioners/churn-prediction-game-developers-using-google-analytics-4-ga4-and-bigquery-ml)
- [The best of both worlds: Calling Auto ML from BigQuery](https://towardsdatascience.com/the-best-of-both-worlds-calling-auto-ml-from-bigquery-9dfd433a45d6)
- [How to do time series forecasting in BigQuery](https://medium.com/@lakshmanok/how-to-do-time-series-forecasting-in-bigquery-af9eb6be8159) ([corresponding notebook](https://github.com/GoogleCloudPlatform/bigquery-oreilly-book/blob/master/blogs/bqml_arima/bqml_arima.ipynb))
- [Stack Overflow in 2023: Predicting with ARIMA and BigQuery](https://towardsdatascience.com/stack-overflow-future-trends-predicting-with-arima-and-bigquery-77d330833329)
- [Using BigQuery (and BigQuery ML) from Kubeflow Pipelines](https://medium.com/google-cloud/using-bigquery-and-bigquery-ml-from-kubeflow-pipelines-991a2fa4bea8)
- [How to export a BigQuery ML model and deploy it for online prediction](https://towardsdatascience.com/how-to-export-a-bigquery-ml-model-and-deploy-it-for-online-prediction-a7e4d44c4c93)
- [Continuous model evaluation with BigQuery ML, Stored Procedures, and Cloud Scheduler](https://cloud.google.com/blog/topics/developers-practitioners/continuous-model-evaluation-bigquery-ml-stored-procedures-and-cloud-scheduler)
- [Hyperparameter tuning BigQuery ML](https://medium.com/google-cloud/hyperparameter-tuning-directly-within-bigquery-ml-a0affb0991ae)
- [Explaining a BigQuery ML model](https://lakshmanok.medium.com/explaining-a-bigquery-ml-model-5cf8d9636ec9)

## SQL
- [How to use Dynamic SQL in BigQuery](https://towardsdatascience.com/how-to-use-dynamic-sql-in-bigquery-8c04dcc0f0de)
- [Optimizing your BigQuery incremental data ingestion pipelines](https://cloud.google.com/blog/products/data-analytics/optimizing-your-bigquery-incremental-data-ingestion-pipelines): optimising `MERGE` statements

## Security
- [BigQuery Data Security & Governance Guide](https://cloud.google.com/bigquery/docs/data-governance)
- [Data deletion and retention with crypto-shredding (Part 1)](https://medium.com/google-cloud/bigquery-encryption-functions-part-i-data-deletion-retention-with-crypto-shredding-7085ecf6e53f), [(Part 2)](https://medium.com/google-cloud/end-to-end-crypto-shredding-part-ii-data-deletion-retention-with-crypto-shredding-a67f5300a8c8)
- [GCP Controls to leverage for Data Pipeline in Regulated Industries](https://cloud.google.com/blog/products/data-analytics/gcp-controls-to-leverage-for-data-pipeline-in-regulated-industries)
- [Automatically apply sensitivity tags in Data Catalog to files, databases, and BigQuery tables using Cloud Data Loss Prevention and Dataflow](https://cloud.google.com/architecture/automatically-apply-sensitivity-tags-in-data-catalog)

## Geospatial
- [Performance Testing Google BigQuery Geospatial — A Technical Deep Dive](https://towardsdatascience.com/performance-testing-google-bigquery-gis-a-technical-deep-dive-4e8fbc21e998)
- [How to load GeoJSON files into BigQuery GIS](https://medium.com/google-cloud/how-to-load-geojson-files-into-bigquery-gis-9dc009802fb4)
- 

## Tools
- [bigquery-utils](https://github.com/GoogleCloudPlatform/bigquery-utils): Useful UDFs, scripts, and views for working with Google BigQuery
- [Open feature requests]( https://issuetracker.google.com/issues?q=componentid:187149%20status:open): This provides a glimpse into what's coming up in Google BigQuery
- [BigQuery Query Plan Visualizer](https://bqvisualiser.appspot.com/): provides a web application which can be used to visualise the flow of execution stages within a BigQuery job. This may be useful in identifying problematic stages and provides greater usability for large query plans than the default query plan explanation in the Google Cloud Console. The source code is available [here](https://github.com/smeyn/professional-services/tree/master/tools/bq-visualizer).
- [Cloud Data Quality Engine (CloudDQ)](https://github.com/GoogleCloudPlatform/cloud-data-quality)
- [Data Validation Tool](https://github.com/GoogleCloudPlatform/professional-services-data-validator) ([Google Cloud blog post](https://cloud.google.com/blog/products/databases/automate-data-validation-with-dvt) | [Open Source blog post](https://opensource.googleblog.com/2021/08/introducing-data-validation-tool.html))
- [JMeter BigQuery Performance Testing](https://github.com/GoogleCloudPlatform/bigquery-utils/tree/master/performance_testing/jmeter)
- [BigQuery View Analyser (by Servian)](https://github.com/servian/bigquery-view-analyzer)
- [Fake PII table creator](https://github.com/mesmacosta/bq-fake-pii-table-creator): scripts to generate tables with fake PII (e.g. names, phone numbers, etc.). Useful for testing out DLP.
- [Generate fake datasets in BigQuery](https://medium.com/google-cloud/yet-another-way-to-generate-fake-datasets-in-bigquery-93ee87c1008f)
- [BigQuery Streaming API Test](https://github.com/winterlabs-dev/bqwrite-test): A command line application designed to provide a method to test the BigQuery Streaming API or BigQuery Storage Write API, allowing you to get a view of the potential throughput available via a given host

## Frameworks
- [ZetaSQL](https://github.com/google/zetasql) is the SQL parsing engine that BigQuery utilises. ZetaSQL defines a language (grammar, types, data model, and semantics) as well as a parser and analyzer. It is not itself a database or query engine. Instead it is intended to be used by multiple engines wanting to provide consistent behavior for all semantic analysis, name resolution, type checking, implicit casting, etc.
- [Tink](https://github.com/google/tink) is Google's multi-language, cross-platform, open source library that provides cryptographic APIs that are secure, easy to use correctly, and hard(er) to misuse. BigQuery's [AEAD (authenticated encryption with associated data) Encryption Functions](https://cloud.google.com/bigquery/docs/reference/standard-sql/aead_encryption_functions) uses Tink under the hood. 

## Monitoring
- [Taking a practical approach to BigQuery slot usage analysis](https://cloud.google.com/blog/products/data-analytics/monitoring-resource-usage-in-a-cloud-data-warehouse)
- [Leveraging BigQuery Audit Log pipelines for Usage Analytics](https://cloud.google.com/blog/products/data-analytics/bigquery-audit-logs-pipelines-analysis)

There are 3 primary sources of data that allow you to evaluate slot usage and queries.

### System tables (`INFORMATION_SCHEMA`)
- Details are available within one second of job completion
- Job data is retained for 180 days. If you want to maintain a backup of historical data, use scheduled queries to export the data to a partitioned table. 
- [Sample `INFORMATION_SCHEMA` queries](https://github.com/GoogleCloudPlatform/training-data-analyst/blob/master/courses/data-engineering/demos/information_schema.md)
- [BigQuery System Tables Reports (Data Studio)](https://github.com/GoogleCloudPlatform/bigquery-utils/tree/master/dashboards/system_tables)
- [Troubleshoot BigQuery performance with these Google Data Studio dashboards](https://cloud.google.com/blog/products/data-analytics/troubleshoot-bigquery-performance-with-these-dashboards). Identify and address slot contention, data shape changes, increased shuffle computation, and priority mode changes.
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
![Migration strategy](https://storage.googleapis.com/gweb-cloudblog-publish/images/DW_Migration_Strategy.max-2000x2000.jpg)
![Migration architecture](https://storage.googleapis.com/gweb-cloudblog-publish/images/DW_Migration_Architecture.max-2000x2000.jpg)
- Cloud Architecture: [Migrating data warehouses to BigQuery](https://cloud.google.com/architecture/dw2bq/dw-bq-migration-overview)
- [Redshift and S3 migration to BigQuery](https://cloud.google.com/blog/products/data-analytics/redshift-and-s3-data-warehouse-migration-tools)
- [How do I move data from MySQL to BigQuery?](https://cloud.google.com/blog/products/data-analytics/how-to-move-data-from-mysql-to-bigquery): CDC methodology using Debezium -> Pub/Sub -> Dataflow -> BigQuery
- [Database migration: Concepts and principles](https://cloud.google.com/solutions/database-migration-concepts-principles-part-1)
- [Database replication to BigQuery using change data capture](https://cloud.google.com/solutions/database-replication-to-bigquery-using-change-data-capture)
- [SQL Server SSRS, SSIS packages with Google Cloud BigQuery](https://cloud.google.com/blog/topics/data-warehousing/google-bigquery-and-sql-server-ssis-and-ssrs)

## Federated data
- [Replicating from Cloud Spanner to BigQuery at scale](https://cloud.google.com/blog/topics/developers-practitioners/replicating-cloud-spanner-bigquery-scale)
- [Real-time analytics made easy with Cloud Spanner federated queries with BigQuery](https://cloud.google.com/blog/products/databases/cloud-spanner-gets-stronger-with-bigquery-federated-queries)

## dbt
- [Loading and transforming data into BigQuery using dbt](https://medium.com/@lakshmanok/loading-and-transforming-data-into-bigquery-using-dbt-65307ad401cd)
- [BigQuery dbt: modern problems require modern solutions](https://medium.com/weareservian/bigquery-dbt-modern-problems-require-modern-solutions-b40faedc8aaf)
- [Run dbt on Cloud Composer](https://github.com/GoogleCloudPlatform/professional-services/tree/main/examples/dbt-on-cloud-composer)

## Stored procedures
- [Quickly create BigQuery demo/dev environments using SQL](https://lakshmanok.medium.com/quickly-create-bigquery-demo-dev-environments-using-sql-b14f734f7f96)

## Pricing & cost management
- [Choosing between BigQuery on-demand and flat rate pricing](https://cloud.google.com/blog/products/data-analytics/choosing-bigquery-pricing)
- [Optimize BigQuery costs with Flex Slots](https://cloud.google.com/blog/products/data-analytics/optimize-bigquery-costs-with-flex-slots)
    - ![](https://storage.googleapis.com/gweb-cloudblog-publish/images/3_slots_and_on-demand.max-1200x1200.jpg)
- [Effectively using BigQuery Reservations](https://cloud.google.com/blog/products/data-analytics/effectively-using-bigquery-reservations)
- [How to right-size your flat-rate and flex slots reservations in BigQuery](https://medium.com/google-cloud/how-to-move-from-on-demand-pricing-to-reservations-in-bigquery-65552cbebd45)
- [Reducing BigQuery production cost by 70% with Flex Slots](https://engineering.chartboost.com/reducing-bigquery-production-cost-by-70-with-flex-slots-97a79a2918f8)
- [Principles of Cost Optimization (PDF)](https://services.google.com/fh/files/misc/understanding_the_principles_of_cost_optimization_2020_whitepaper_google_cloud.pdf)

### Pricing & cost management best practices
- The recommended best practice for BigQuery Reservations is to maintain a dedicated project for administering the reservations.

## Guides & HowTos
- [Using BigQuery DML & External Temporary Tables To Perform Realtime Reformatting Inserts For Television News Ngrams](https://blog.gdeltproject.org/using-bigquery-dml-external-temporary-tables-to-perform-realtime-reformatting-inserts-for-television-news-ngrams/)
- [Breaking up very large BigQuery jobs](https://medium.com/google-cloud/breaking-up-very-large-bigquery-jobs-ea1ccc720a7): integer partitioning of the data, followed by script to loop through partitions. Eliminates byte spilling, minimises repartitioning.
- [Building a Data Platform to Enable Analytics and AI-Driven Innovation](https://medium.com/swlh/building-a-data-platform-to-enable-analytics-and-ai-driven-innovation-1bd95e37efb9)
- [How fleet management gets easier with smart analytics on Google Cloud](https://cloud.google.com/blog/products/data-analytics/interactive-smart-analytics-demo-for-transportation)
- [What’s the weather like? Using Colab to get more out of BigQuery](https://cloud.google.com/blog/products/data-analytics/whats-the-weather-like-using-colab-to-get-more-out-of-bigquery)
- [Architecting a data lineage system for BigQuery](https://cloud.google.com/blog/products/data-analytics/architecting-a-data-lineage-system-for-bigquery)
- [How to trigger Cloud Run actions on BigQuery events](https://cloud.google.com/blog/topics/developers-practitioners/how-trigger-cloud-run-actions-bigquery-events)
- [How to use BigQuery ML for anomaly detection](https://cloud.google.com/blog/products/data-analytics/how-to-use-bigquery-ml-for-anomaly-detection)
- [Unlock geospatial insights with Data Studio and BigQuery GIS](https://cloud.google.com/blog/products/data-analytics/geospatial-insights-bigquery-gis-and-data-studio-choropleth). Useful GIS tips.
- [Make informed decisions with Google Trends data](https://cloud.google.com/blog/topics/developers-practitioners/make-informed-decisions-google-trends-data)
- [Learnings from Streaming 25 Billion Events to Google BigQuery](https://aride.medium.com/learnings-from-streaming-25-billion-events-to-google-bigquery-57ce81fa9898) (PayPal)

## Case Studies
- [Modernizing Twitter's ad engagement analytics platform](https://cloud.google.com/blog/products/data-analytics/modernizing-twitters-ad-engagement-analytics-platform): On-prem HDFS -> GCS -> Dataflow -> BQ + BigTable
- [Processing billions of events in real time at Twitter](https://blog.twitter.com/engineering/en_us/topics/infrastructure/2021/processing-billions-of-events-in-real-time-at-twitter-)
- [How Twitter's Data Analytics Platform team uses BigQuery](https://blog.twitter.com/engineering/en_us/topics/infrastructure/2019/democratizing-data-analysis-with-google-bigquery.html)
- [Seven-Eleven Japan uses Google Cloud to serve up real-time data for fast business decisions](https://cloud.google.com/blog/products/data-analytics/how-7-eleven-japan-built-its-new-data-platform)
- [Data champions: How the Golden State Warriors are turning on-court data into a competitive advantage](https://cloud.google.com/blog/products/data-analytics/warriors-use-on-court-data-for-competitive-edge)
- [How Unity analyzes petabytes of data in BigQuery for reporting and ML initiatives](https://cloud.google.com/blog/products/data-analytics/cloud-data-warehouse-for-ml-advanced-analytics)
- [The evolution of data architecture at The New York Times](https://cloud.google.com/blog/products/data-analytics/how-the-new-york-times-build-an-end-to-end-cloud-data-platform)
- [A tale of two data warehouses — News UK’s data platform migration to Google Cloud (Part 1)](https://medium.com/news-uk-technology/a-tale-of-two-data-warehouses-newsuks-data-platform-migration-to-google-cloud-part-1-be1bc0ff09d8) [(Part 2)](https://medium.com/news-uk-technology/a-tale-of-two-data-warehouses-news-uks-data-platform-migration-to-google-cloud-part-2-2aae617899a0)
- [MLB's fan data team hits it out of the park with data warehouse modernization](https://cloud.google.com/blog/products/data-analytics/mlb-moves-to-bigquery-data-warehouse)
- [MLB uses Google Cloud Smart Analytics platform to scale data insights](https://cloud.google.com/blog/products/data-analytics/how-mlb-is-using-data-analytics-on-google-cloud)

## Compare
- [Google BigQuery is a Leader in The 2021 Forrester Wave: Cloud Data Warehouse](https://cloud.google.com/blog/products/data-analytics/google-cloud-a-leader-in-2021-forrester-wave-cloud-data-warehouse)
- [BigQuery vs Redshift vs Snowflake](https://poplindata.com/data-warehouses/2020-database-showdown-bigquery-vs-redshift-vs-snowflake/)
- [Which data warehouse works best for geospatial processing? (NGIS)](https://content.ngis.com.au/which-data-warehouse-works-best-for-geospatial-processing)
- [BigQuery vs Snowflake vs Vertica](https://cloud.google.com/blog/products/data-analytics/e-commerce-data-warehouse-migration)
![BigQuery vs Snowflake vs Vertica](https://storage.googleapis.com/gweb-cloudblog-publish/images/Trendyol_results.max-900x900.jpg)
- [Guidance on evaluating data warehouses](https://medium.com/@vtereshko/data-warehouse-evaluations-should-take-a-page-out-of-sports-e5b5bfe6279a): TCP-* benchmark tests just aren't enough
- [Evaluating separation of storage and compute](https://medium.com/@vtereshko/approximatish-separation-of-storage-and-compute-in-data-warehouses-b0a1329569e4)
- [Why Verizon Media picked BigQuery for scale, performance and cost](https://cloud.google.com/blog/products/data-analytics/benchmarking-cloud-data-warehouse-bigquery-to-scale-fast)
![MAW usage of BigQuery](https://storage.googleapis.com/gweb-cloudblog-publish/images/MAW_usage_of_BQ.0361026107230502.max-1000x1000.jpg)
![Query performance test results](https://storage.googleapis.com/gweb-cloudblog-publish/images/Query_Performance_Test_Results_1.max-1300x1300.jpg)
![Concurrency performance](https://storage.googleapis.com/gweb-cloudblog-publish/images/concurrency_benchmark.max-1000x1000.jpg)
![Overall results](https://storage.googleapis.com/gweb-cloudblog-publish/images/proof_of_concept.max-800x800.jpg)

## History
- [Meet the BigQuery founding engineers](https://www.youtube.com/watch?v=ngaUTCQfvYA)

## Training
- [BigQuery quests on Qwiklabs](https://google.qwiklabs.com/catalog?keywords=bigquery)

### Free Qwiklab Modules
- [Troubleshooting Common SQL Errors](https://www.qwiklabs.com/focuses/3642)
- [Exploring Your Ecommerce Dataset with SQL](https://www.qwiklabs.com/focuses/3618)
