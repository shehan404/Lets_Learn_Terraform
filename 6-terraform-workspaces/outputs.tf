output "ec2_public_ip_addresses" {
  value = module.ec2_instance[*].ec2_public_ip_address
}

