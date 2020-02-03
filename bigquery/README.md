# Google BigQuery

## Datasets
- [BigQuery public datasets](https://pantheon.corp.google.com/marketplace/browse?filter=solution-type:dataset)

## Concepts
- [What is a slot?](https://cloud.google.com/bigquery/docs/slots)

## Training
- [BigQuery quests on Qwiklabs](https://google.qwiklabs.com/catalog?keywords=bigquery)

## Tools
- [bigquery-utils](https://github.com/GoogleCloudPlatform/bigquery-utils): Useful UDFs, scripts, and views for working with Google BigQuery
- [Open feature requests]( https://issuetracker.google.com/issues?q=componentid:187149%20status:open): This provides a glimpse into what's coming up in Google BigQuery
- [BigQuery Query Plan Visualizer](https://bqvisualiser.appspot.com/): provides a web application which can be used to visualise the flow of execution stages within a BigQuery job. This may be useful in identifying problematic stages and provides greater usability for large query plans than the default query plan explanation in the Google Cloud Console. The source code is available [here](https://github.com/smeyn/professional-services/tree/master/tools/bq-visualizer).
- [BigQuery View Analyser (by Servian)](https://github.com/servian/bigquery-view-analyzer)

## Frameworks
- [ZetaSQL](https://github.com/google/zetasql) is the SQL parsing engine that BigQuery utilises. ZetaSQL defines a language (grammar, types, data model, and semantics) as well as a parser and analyzer. It is not itself a database or query engine. Instead it is intended to be used by multiple engines wanting to provide consistent behavior for all semantic analysis, name resolution, type checking, implicit casting, etc.

## Articles by Googlers
- [10 top tips: Unleash your BigQuery superpowers](https://cloud.google.com/blog/products/data-analytics/top-bigquery-superpowers-for-cloud-data-analytics)
- [15 things you didn't know about BigQuery (2016)](https://medium.com/google-cloud/15-awesome-things-you-probably-didnt-know-about-google-bigquery-6654841fa2dc): an oldie, but a goodie.

## Articles by enthusiasts
- [Pro tips for Google Cloud Dataflow & BigQuery](https://polleyg.dev/posts/data-engineering-tips/)