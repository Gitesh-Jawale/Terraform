output "vpc_id" {
  value = module.networking.vpc_id
}

output "az1_subnet_public_id" {
  value = module.az1.az1_public_subnet_id
}

output "az1_subnet_private_id" {
  value = module.az1.az1_private_subnet_id
}

output "az2_subnet_public_id" {
  value = module.az2.az2_private_subnet_id
}

output "az2_subnet_private_id" {
  value = module.az2.az2_private_subnet_id
}
