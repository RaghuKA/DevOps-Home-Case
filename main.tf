
locals {
  common_tags = {
    environment = "homecase"
    company     = "Pixxio"
  }
}

# S3 module
module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  aws_region  = var.aws_region
  providers = {
    aws = aws.us_east_1
  }
  # Merge common tags with EC2-specific tags
  tags = merge(
    local.common_tags,
    {
      cdnbucket = false
    }
  )
}


module "ec2_instance" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  ami_id        = var.ami_id
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  instance_name = var.instance_name
  s3_bucket_arn      = module.s3_bucket.bucket_arn

  # Merge common tags with EC2-specific tags
  tags = merge(
    local.common_tags,
    {
      Name = var.instance_name
    }
  )
}


