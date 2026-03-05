terraform {
    required_version = "1.14.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.35.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = "my-unique-bucket-name-12345"
  
}