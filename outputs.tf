output "vpc_id" {
  value = module.my_vpc.vpc_id
}

output "az1_subnet_public_id" {
  value = module.my_vpc.az1_subnet_public_id
}

output "az1_subnet_private_id" {
  value = module.my_vpc.az1_subnet_private_id
}

output "az2_subnet_public_id" {
  value = module.my_vpc.az2_subnet_public_id
}

output "az2_subnet_private_id" {
  value = module.my_vpc.az2_subnet_private_id
}
