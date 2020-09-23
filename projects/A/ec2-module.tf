
module "ec2module" {
  source = "../../modules/ec2"
}




## This part for Staging when we need to use different EC2 instance type rather than defined one in variable
/*
module "ec2module" {
  source = "../../modules/ec2"
  instance_type = "t2.large"   # this value will overwrite the defined value in variables file
}
*/
