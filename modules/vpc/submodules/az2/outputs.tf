output "az2_public_subnet_id" {
    value = aws_subnet.public.id
}

output "az2_private_subnet_id" {
    value = aws_subnet.private.id
}