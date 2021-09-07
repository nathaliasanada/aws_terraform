provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

# Variables not allowed here
terraform {
  backend "s3" {
    bucket = "github-nathy-tfstate"
    key    = "ec2_default/terraform.state"
    region = "us-east-1"
    profile = "github-user"
  }
}