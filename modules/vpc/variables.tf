variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "az1_subnet_public_cidr" {
  description = "CIDR block for the public subnet in AZ1"
}

variable "az1_subnet_private_cidr" {
  description = "CIDR block for the private subnet in AZ1"
}

variable "az2_subnet_public_cidr" {
  description = "CIDR block for the public subnet in AZ2"
}

variable "az2_subnet_private_cidr" {
  description = "CIDR block for the private subnet in AZ2"
}
