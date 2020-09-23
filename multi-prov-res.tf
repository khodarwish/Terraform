provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

provider "aws" {
  alias      = "aws02"        # need this Alias for 2nd resource to avoide conflict of providers
  region     = "us-west-1"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}


resource "aws_eip" "khaled-eip1" {
  vpc = "true" # it will create in 1st region "us-west-2"
}


resource "aws_eip" "khaled-eip2" {
  vpc      = "true"
  provider = "aws.aws02"      # by this Alias it will create in 2nd region "us-west-1"
}
