provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_eip" "khaled-lb" {
  vpc = true
}

output "eip" {
  value = aws_eip.khaled-lb.public_ip
}

resource "aws_s3_bucket" "khaled-s3" {
  bucket = "khaled-attribute-01"
}

output "mys3bucket" {
  value = aws_s3_bucket.khaled-s3.bucket_domain_name
}
