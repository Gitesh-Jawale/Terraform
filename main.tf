terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket         = "terraform-state-bucket-gitesh"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-north-1"
}

module "my_vpc" {
  source = "./modules/vpc"

  vpc_cidr_block         = "10.0.0.0/16"
  az1_subnet_public_cidr = "10.0.1.0/24"
  az1_subnet_private_cidr = "10.0.10.0/24"
  az2_subnet_public_cidr = "10.0.2.0/24"
  az2_subnet_private_cidr = "10.0.20.0/24"
}