provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}

resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = var.az

/*
  # Another way to set variable at one file without use variables.tf and terraform.tfvars files
  variable "elb_name" {
    type = string
    default = "khaled-elb"
  }

  variable "az" {
    type = list
    default = ["us-west-2a","us-west-2b"]
  }
*/

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "khaled-terraform-elb"
  }
}
