# Google Cloud Dataflow

## Best Practices
- [Managing & monitoring a Cloud Dataflow setup](https://cloud.google.com/blog/products/data-analytics/managing-and-monitoring-a-cloud-dataflow-setup)
- [Tips & tricks to get your Cloud Dataflow pipelines into production](https://cloud.google.com/blog/products/data-analytics/tips-and-tricks-to-get-your-cloud-dataflow-pipelines-into-production)
- [Solution: Setting up a CI/CD pipeline for your data-processing workflow](https://cloud.google.com/solutions/cicd-pipeline-for-data-processing)

## Guides
- [Calling Google Cloud Machine Learning APIs from Batch and Stream ETL pipelines](https://medium.com/google-cloud/calling-google-cloud-machine-learning-apis-from-batch-and-stream-etl-pipelines-9a789ac6f972)
- [Machine learning patterns with Apache Beam and the Dataflow Runner, part I](https://cloud.google.com/blog/products/data-analytics/ml-inference-in-dataflow-pipelines)
- [Using TFX inference with Dataflow for large scale ML inference patterns, part II](https://cloud.google.com/blog/topics/developers-practitioners/using-tfx-inference-dataflow-large-scale-ml-inference-patterns)
- [How Spotify Optimized the Largest Dataflow Job Ever for Wrapped 2020](https://engineering.atspotify.com/2021/02/11/how-spotify-optimized-the-largest-dataflow-job-ever-for-wrapped-2020/)
- [Pro tips for Google Cloud Dataflow & BigQuery (Graham Polley)](https://polleyg.dev/posts/data-engineering-tips/)

## Training
- [Beam College](https://beamcollege.dev): free training resources
- [Beam College YouTube channel](https://www.youtube.com/channel/UC4OW4U57YFI0haAYKPfGS6g)

## Templates
- [Flex templates](https://cloud.google.com/blog/products/data-analytics/create-templates-from-any-dataflow-pipeline)
![Flex templates](https://storage.googleapis.com/gweb-cloudblog-publish/images/4_Sharing_a_Dataflow_pipeline_with_classic.max-1100x1100.jpg)

## Tools
- [Klio (by Spotify)](https://github.com/spotify/klio): a framework built on top of Apache Beam for Python that helps researchers and engineers alike run large-scale data pipelines for processing audio and other media files ([intro blog post](https://cloud.google.com/blog/products/data-analytics/try-spotifys-internal-os-tool-for-media-processing-in-beam)).
- [Dataflow Launcher (by Qubit)](https://github.com/QubitProducts/dataflow_launcher): A Python library to seamlessly launch dataflow jobs without worrying about paths, options, updates, and pubsub creation. This lets you localize your pipeline configurations in simple, easy-to-read and manageable config files, making it simple to update the pipeline options. It also means that configurations for different execution environments, such as staging or production, can be kept separately in their own configuration files, further simplifying integration with CI/CD tools.

## Case Studies
- [Modernizing Twitter's ad engagement analytics platform](https://cloud.google.com/blog/products/data-analytics/modernizing-twitters-ad-engagement-analytics-platform): On-prem HDFS -> GCS -> Dataflow -> BQ + BigTable
- [Processing billions of events in real time at Twitter](https://blog.twitter.com/engineering/en_us/topics/infrastructure/2021/processing-billions-of-events-in-real-time-at-twitter-)
- [MLB uses Google Cloud Smart Analytics platform to scale data insights](https://cloud.google.com/blog/products/data-analytics/how-mlb-is-using-data-analytics-on-google-cloud)
- [Spotify: Listening Together, Miles Apart](https://engineering.atspotify.com/2020/09/03/listening-together-miles-apart/)

## Under the Hood
- [Multi-language Dataflow pipelines enabled by new, faster architecture](https://cloud.google.com/blog/products/data-analytics/multi-language-sdks-for-building-cloud-pipelines)
- [Dataflow Under the Hood: the origin story](https://cloud.google.com/blog/products/data-analytics/how-cloud-batch-and-stream-data-processing-works)
- [Dataflow Under the Hood: understanding Dataflow techniques](https://cloud.google.com/blog/products/data-analytics/cloud-batch-and-stream-processing-for-analytics)
- [Dataflow Under the Hood: comparing Dataflow with other tools](https://cloud.google.com/blog/products/data-analytics/dataflow-vs-other-stream-batch-processing-engines)
- [Streaming Engine: Execution Model for Highly-Scalable, Low-Latency Data Processing](https://medium.com/google-cloud/streaming-engine-execution-model-1eb2eef69a8e)
- [Flex templates](https://cloud.google.com/blog/topics/developers-practitioners/why-you-should-be-using-flex-templates-your-dataflow-deployments)

## History
- [Dataflow Under the Hood: the origin story](https://cloud.google.com/blog/products/data-analytics/how-cloud-batch-and-stream-data-processing-works)
