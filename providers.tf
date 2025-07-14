terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Main provider (eu-central-1)
provider "aws" {
  region = "eu-central-1"
}

# # Main provider (eu-central-1)
# provider "aws" {
#   region = "eu-central-1"
# }

# Provider for S3 bucket (us-east-1)
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

# # Provider for S3 bucket (us-east-1)
# provider "aws" {
#   alias  = "s3_region"
#   region = "us-east-1"
# }

# # Configure the AWS Provider
# provider "aws" {
#   region                   = "eu-central-1"
#   shared_credentials_files = ["~/.aws/credentials"]
#   profile                  = "vscode"

# }

# provider "aws" {
#   region                   = "eu-central-1"
#   shared_config_files      = ["C:/Users/arkum/.aws/config"]
#   shared_credentials_files = ["C:/Users/arkum/.aws/credentials"]
#   profile                  = "vscode"
# }