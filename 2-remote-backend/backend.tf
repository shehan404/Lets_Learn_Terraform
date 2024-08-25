terraform {
  backend "s3" {
    bucket = "s3-bucket-terraform-shehan"
    key    = "shehan/terraform.tfstate"
    region = "us-east-1"
  }
}


