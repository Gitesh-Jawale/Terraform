resource "aws_security_group" "public" {
  vpc_id = var.vpc_id

  // Example: Allow HTTP traffic from anywhere to the public subnet
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
