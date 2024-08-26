module "ec2_instance" {
  source              = "./modules/ec2"
  ami_value           = var.ami
  instance_type_value = var.instance_type
}
