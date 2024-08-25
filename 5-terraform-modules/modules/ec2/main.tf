resource "aws_instance" "terra_ec2" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
}
