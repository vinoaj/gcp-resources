# Useful `gcloud` and `gsutil` commands

- [gcloud Cheat Sheet (PDF)](https://cloud.google.com/sdk/docs/images/gcloud-cheat-sheet.pdf)


## `gcloud` commands

### Switch projects
`gcloud config set project <PROJECT_NAME>`

### List current project name
`gcloud config list --format 'value(core.project)'`


## `gsutil` commands

### Merge 2 files together
`gsutil compose gs://bucket-name/file1.csv gs://bucket-name/file2.csv gs://bucket-name/target-file.csv`

## Guides
- [7 gcloud Tricks You Probably Didn’t Know](https://medium.com/google-cloud/7-gcloud-tricks-you-probably-didnt-know-7f64a16869e7)
