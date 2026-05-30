terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.46.0"
    }
  }
  backend "s3" {
    bucket = "21-05-bucket"
    region = "us-east-1"
    key = "roboshop/dev/sg"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}