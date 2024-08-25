output "public_ip" {
  description = "Public IP address of the ec2"
  value       = aws_instance.test_terra.public_ip
}


