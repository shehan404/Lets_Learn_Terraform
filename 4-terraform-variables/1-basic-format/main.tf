terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

variable "ami_id" {
  description = "AMI id of ec2"
  type        = string
  default     = "ami-066784287e358dad1"
}

variable "instance_type" {
  description = "Type of ec2"
  type        = string
  default     = "t2.micro"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_terra" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

output "public_ip" {
  description = "Public IP address of the ec2"
  value       = aws_instance.test_terra.public_ip
}

