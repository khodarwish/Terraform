
resource "aws_instance" "myec2" {
  ami = "ami-0a07be880014c7b8e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-a90247ff"]
  key_name = "khaled-terraform"
  subnet_id = "subnet-720fab2f"

  tags {
    Name = "darwish"
  }
}
