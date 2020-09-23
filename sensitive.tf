provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX2HLAVILQEDWPB7C"
  secret_key = "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"
}


locals {
  db_password = {
    admin = "password"
  }
}



output "db_password" {
  value     = local.db_password
  sensitive = true
}


/*
output "db_password" {
  value = local.db_password
}
*/
