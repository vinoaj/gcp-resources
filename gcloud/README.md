# Useful `gcloud` and `gsutil` commands

- [gcloud Cheat Sheet (PDF)](https://cloud.google.com/sdk/docs/images/gcloud-cheat-sheet.pdf)


## `gcloud` commands

### List all available profiles
`gcloud config configurations list`

### List current profile parameters
`gcloud config list`

### Switch projects
`gcloud config set project <PROJECT_NAME>`

### List current project name
`gcloud config list --format 'value(core.project)'`

### Get project name & ID by project number
`gcloud projects list --filter='PROJECT_NUMBER:12345678900`


## `gsutil` commands

### Merge 2 files together
`gsutil compose gs://bucket-name/file1.csv gs://bucket-name/file2.csv gs://bucket-name/target-file.csv`

## Guides
- [7 gcloud Tricks You Probably Didn’t Know](https://medium.com/google-cloud/7-gcloud-tricks-you-probably-didnt-know-7f64a16869e7)
