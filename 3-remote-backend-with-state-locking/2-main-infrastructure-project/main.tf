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
    Name = "MyEC2Instance"
  }
}

resource "aws_instance" "test_terra2" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance2"
  }
}

