provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_instance" "khaled-ec2" {
  ami           = "ami-067f5c3d5a99edc80"
  instance_type = "t2.micro"
  key_name      = "khaled-terraform"    # refers to private_key

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"         # default connection
      user        = "ec2-user"    # default user for amazon-linux OS
      private_key = file("./khaled-terraform.pem")
      host        = self.public_ip
    }
  }
}
