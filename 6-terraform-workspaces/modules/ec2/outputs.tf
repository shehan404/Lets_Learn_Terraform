output "ec2_public_ip_address" {
  description = "Public ip address of ec2"
  value = aws_instance.terra_ec2.public_ip
}