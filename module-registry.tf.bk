provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

module "khaled-ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"
  name                   = "khaled-cluster"
  instance_count         = 2
  ami                    = "ami-067f5c3d5a99edc80"  # based on the region
  instance_type          = "t2.micro"
  subnet_id              = "subnet-6d065946"    # from AWS GUI on VPC section, select whatever subnet you want

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
