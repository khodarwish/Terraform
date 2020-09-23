provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_instance" "khaled-ec2" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t2.micro"
}

resource "aws_eip" "khaled-lb" {
  vpc      = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.khaled-ec2.id
  allocation_id = aws_eip.khaled-lb.id
}

resource "aws_security_group" "allow_tls" {
  name        = "khaled-security-group"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks  = ["${aws_eip.khaled-lb.public_ip}/32"]
#    cidr_blocks = [aws_eip.khaled-lb.public_ip/32]
  }
}
