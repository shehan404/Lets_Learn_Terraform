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


resource "aws_s3_bucket" "s3_bucket" {
  bucket = "s3-bucket-terraform-shehan"

  tags = {
    Name = "s3_bucket_terraform_shehan"
  }
}

resource "aws_dynamodb_table" "dynamodb_locking" {
  name         = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

