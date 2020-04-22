# Useful `gcloud` and `gsutil` commands

# `gcloud` commands

## Switch projects
`gcloud config set project <PROJECT_NAME>`


# `gsutil` commands

## Merge 2 files together
`gsutil compose gs://bucket-name/file1.csv gs://bucket-name/file2.csv gs://bucket-name/target-file.csv`
