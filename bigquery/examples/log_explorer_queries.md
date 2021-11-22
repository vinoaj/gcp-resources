# Log Explorer queries

## Identify scheduled queries
resource.type="bigquery_resource"
protoPayload.serviceData.jobInsertRequest.resource.jobConfiguration.labels.data_source_id="scheduled_query"

