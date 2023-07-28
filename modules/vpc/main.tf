module "az1" {
  source = "./submodules/az1"
  vpc_id = module.networking.vpc_id
  az1_subnet_private_cidr = var.az1_subnet_private_cidr
  az1_subnet_public_cidr = var.az1_subnet_public_cidr
}

module "az2" {
  source = "./submodules/az2"
  vpc_id = module.networking.vpc_id
  az2_subnet_private_cidr = var.az2_subnet_private_cidr
  az2_subnet_public_cidr = var.az2_subnet_public_cidr
}

module "networking" {
  source = "./submodules/networking"
  vpc_cidr_block = var.vpc_cidr_block
}

module "public_security_group" {
  source = "./security_groups/public"
  vpc_id = module.networking.vpc_id
}

module "private_security_group" {
  source = "./security_groups/private"
  vpc_id = module.networking.vpc_id
  az1_subnet_public_cidr = var.az1_subnet_public_cidr
  az2_subnet_public_cidr = var.az2_subnet_public_cidr
}
