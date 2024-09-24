terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "my-demo-1"
    key    = "expense-dev-frontend"
    region = "us-east-1"
    dynamodb_table = "customer"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}