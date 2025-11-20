#public IP output

output "Public_IP" {
    description = "value of the public IP"
    value       = aws_instance.My-First-Instance[*].public_ip
}

#instance ID output
output "Instance_ID" {
    description = "value of the instance ID"
    value       = aws_instance.My-First-Instance[*].id
}

#Public DNS output
output "Public_DNS" {
    description = "value of the public DNS"
    value       = aws_instance.My-First-Instance[*].public_dns
}