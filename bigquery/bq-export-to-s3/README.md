# Exporting Google BigQuery tables to AWS S3

You can utilise two cloud functions to get the data into S3. Once it's in S3, you can have your own mechanism (e.g. Lambda function) to import the data into Redshift.

# Preamble: set up a Stackdriver export trigger
We will trigger our first Cloud Function whenever the latest Google Analytics daily sessions table is available. This is done through triggering a Pub/Sub message whenever Stackdriver Logging indicates that the latest table has been loaded. In order to set up this trigger, [follow these steps](https://www.e-nor.com/blog/bigquery/cloud-functions-bigquery-data-feed-automation) (refer to the "Pub/Sub & Stackdriver" section).

# Cloud Function 1: Export BigQuery table
- Trigger: Pub/Sub message for when a new daily table has been loaded
- Workflow
	- Export table as JSON (or Avro, Parquet)
	- Save JSON in Google Cloud Storage

# Cloud Function 2: Transfer export file to S3
- Trigger: New file in Google Cloud Storage bucket
- Workflow
	- Utilising [boto](http://boto.cloudhackers.com/en/latest/) read file from Google Cloud Storage
	- Transfer file to S3
	- Delete or archive file
