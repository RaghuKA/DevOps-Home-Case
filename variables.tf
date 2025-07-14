
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0af9b40b1a16fe700" # Amazon Linux 2 AMI (update for your region)
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
  default     = "subnet-f552149f"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "devops-home-case-ec2-key-pair"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "devops-home-case-ec2-instance"
}

# Variables
variable "bucket_name" {
  description = "Name of the S3 bucket (must be globally unique)"
  type        = string
  default     = "devops-home-case-bucket"
}

variable "aws_region" {
  description = "AWS region for the S3 bucket"
  type        = string
  default     = "us-east-1"
}


