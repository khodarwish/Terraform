provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

variable "istest" {}    # means Is this environment test env or prod env ?

resource "aws_instance" "khaled-dev" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t2.micro"
  count = var.istest == true ? 3 : 0
}

resource "aws_instance" "khaled-prod" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t2.large"
  count = var.istest == false ? 1 : 0
}
