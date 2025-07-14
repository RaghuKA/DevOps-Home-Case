

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.this.public_ip
}

variable "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  type        = string
}