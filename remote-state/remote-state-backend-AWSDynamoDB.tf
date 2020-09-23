## This configuration with consider AWS DynamoDB Table

terraform {
  backend "s3" {
    bucket     = "khaled-remote-backend" # create S3 bucket by GUI first
    key        = "khaled-remote.tfstate"
    region     = "us-west-2"
    access_key = "AKIAX2HLAVILQEDWPB7C"
    secret_key = "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"
    dynamodb_table = "khaled-s3-state-lock"  # create DynameDB Table by GUI first
  }
}
