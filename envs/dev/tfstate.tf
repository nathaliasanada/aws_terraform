terraform {
  backend "s3" {
    bucket = "teste-tfstate"
    key    = "terraform.state"
    region = "us-east-1" 
  }
}