provider "aws" {
  alias  = "us_west"
  region = "us-west-1"
}

provider "aws" {
  alias  = "us_east"
  region = "us-east-1"
}

provider "azurerm" {
  alias = "east_us"
  features {}
}

resource "aws_instance1" "west_example" {
  provider      = aws.us_west
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}

resource "aws_instance2" "east_example" {
  provider      = aws.us_east
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}

resource "azurerm_resource_group" "east_example" {
  provider = azurerm.east_us
  name     = "example-resources"
  location = "East US"
}
