terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
  }
    backend "s3" {
    bucket = "dharla-remote-state"
    key    = "dynamic-blocks-terraform"
    region = "us-east-1"
    dynamodb_table = "dharla-locking"
  }
}


provider "aws" {
  region = "us-east-1"
}


