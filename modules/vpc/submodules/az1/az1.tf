resource "aws_subnet" "public" {
  vpc_id     = var.vpc_id
  cidr_block = var.az1_subnet_public_cidr
  availability_zone = "eu-north-2a"
}

resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id
  cidr_block = var.az1_subnet_private_cidr
  availability_zone = "eu-north-2a"
}
