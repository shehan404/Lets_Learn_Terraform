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


