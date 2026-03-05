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

resource "aws_instance" "my-instance" {
  ami = "ami-0d5503fb907719409"
  instance_type = "t3.micro"
  tags = {
    Name = "server-from-terraform"
  }
}