output "ec2_public_ip_addresses" {
  value = module.ec2_instance[*].ec2_public_ip_address
}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}
