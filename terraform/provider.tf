terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.46.0"
    }
  }
  backend "s3" {
    bucket = "21-05-bucket"
    key = "ec2-demo-state-file"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  # Configuration options
}