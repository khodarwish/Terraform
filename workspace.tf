provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_instance" "myinstance" {
  ami           = "ami-067f5c3d5a99edc80"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = "map"
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
  }
}
