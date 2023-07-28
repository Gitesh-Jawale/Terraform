output "az1_public_subnet_id" {
    value = aws_subnet.public.id
}

output "az1_private_subnet_id" {
    value = aws_subnet.private.id
}