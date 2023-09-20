provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tfstate"
    key    = "eks/terraform.state"
    region = "us-east-1"
  }
}