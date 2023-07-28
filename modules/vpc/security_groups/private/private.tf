resource "aws_security_group" "private" {
  vpc_id = var.vpc_id

  // Example: Allow SSH traffic from the public subnet to the private subnet
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.az1_subnet_public_cidr, var.az2_subnet_public_cidr]
  }
}
