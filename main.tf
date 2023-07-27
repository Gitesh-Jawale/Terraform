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

module "vpc" {
  source = "./Module/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "subnet" {
  source = "./Module/subnet"
  vpc_id = module.vpc.vpc_id
  vpc_name = module.vpc.vpc_name
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone = var.availability_zone
}