provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_instance" "khaled-instance" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t2.micro"
  count = 3
}



/*
resource "aws_instance" "khaled-instance1" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t2.micro"
}

resource "aws_instance" "khaled-instance2" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t2.micro"
}
*/
