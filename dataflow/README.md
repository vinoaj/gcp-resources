# Google Cloud Dataflow

## Best Practices
- [Managing & monitoring a Cloud Dataflow setup](https://cloud.google.com/blog/products/data-analytics/managing-and-monitoring-a-cloud-dataflow-setup)
- [Tips & tricks to get your Cloud Dataflow pipelines into production](https://cloud.google.com/blog/products/data-analytics/tips-and-tricks-to-get-your-cloud-dataflow-pipelines-into-production)
- [Solution: Setting up a CI/CD pipeline for your data-processing workflow](https://cloud.google.com/solutions/cicd-pipeline-for-data-processing)

## Tools
- [Dataflow Launchern (by Qubit)](https://github.com/QubitProducts/dataflow_launcher): A Python library to seamlessly launch dataflow jobs without worrying about paths, options, updates, and pubsub creation. This lets you localize your pipeline configurations in simple, easy-to-read and manageable config files, making it simple to update the pipeline options. It also means that configurations for different execution environments, such as staging or production, can be kept separately in their own configuration files, further simplifying integration with CI/CD tools.

## Case Studies
- [Modernizing Twitter's ad engagement analytics platform](https://cloud.google.com/blog/products/data-analytics/modernizing-twitters-ad-engagement-analytics-platform): On-prem HDFS -> GCS -> Dataflow -> BQ + BigTable
