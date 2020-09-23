
##  This configuration without consider AWS DynamoDB

terraform {
  backend "s3" {
    bucket     = "khaled-remote-backend"  # create S3 bucket by GUI first
    key        = "khaled-remote.tfstate"  # name of tfstate file as you like which will not store locally and store at S3 bucket
    region     = "us-west-2"
    access_key = "AKIAX2HLAVILQEDWPB7C"
    secret_key = "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"
  }
}
