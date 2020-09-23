provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_instance" "kdarwish-ec2" {
   ami = "ami-067f5c3d5a99edc80"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.kdarwish-ec2.private_ip} >> private_ips.txt"
  }
}
