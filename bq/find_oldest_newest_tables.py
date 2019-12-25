from google.cloud import bigquery

# Set configuration options
CREDENTIALS_PATH = 'credentials.json'
PROJECT_ID = 'xxxx'
DATASET_ID = 'yyyy'

os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = CREDENTIALS_PATH

# Load BigQuery client
client_bq = bigquery.Client()

# Find the date of the oldest table
query = (
    """
    SELECT 
        REGEXP_EXTRACT(MIN(table_id), r"[0-9]{{8}}") AS table_oldest
        , REGEXP_EXTRACT(MAX(table_id), r"[0-9]{{8}}") AS table_newest
    FROM `{PROJECT_ID}.{DATASET_ID}.__TABLES__`
    WHERE STARTS_WITH(table_id, "ga_sessions_2")
    """.format(PROJECT_ID=PROJECT_ID, DATASET_ID=DATASET_ID)
)

df = client_bq.query(query).to_dataframe()
