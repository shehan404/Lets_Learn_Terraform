terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_terra" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instancenew"
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "s3-bucket-terraform-shehan"

  tags = {
    Name = "s3_bucket_terraform_shehan"
  }
}

