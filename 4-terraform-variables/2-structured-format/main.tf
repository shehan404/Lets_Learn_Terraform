resource "aws_instance" "test_terra" {
  ami           = var.ami_id
  instance_type = var.instance_type
}


