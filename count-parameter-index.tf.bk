provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_iam_user" "lb" {
  name = "load_balancer.${count.index}"
  count = 4
  path = "/system/"
}
