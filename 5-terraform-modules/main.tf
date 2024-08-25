module "ec2_instance" {
  source              = "./modules/ec2"
  ami_value           = "ami-066784287e358dad1"
  instance_type_value = "t2.micro"
  count               = 2
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = "test-s3-tf-shehan"
}
