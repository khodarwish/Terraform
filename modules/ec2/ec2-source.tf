resource "aws_instance" "khaled-ec2" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t2.micro"
  security_groups = ["default"]
}





## This part for Staging when we need to use different EC2 instance type rather than defined one in variable
/*
resource "aws_instance" "khaled-ec2" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = var.instance_type
  security_groups = ["default"]
}
*/
