
output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2_instance.instance_public_ip
}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}

