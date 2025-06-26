output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "private_key_pem" {
  description = "The private key to connect to the EC2 instance"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}

