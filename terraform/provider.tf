terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.46.0"
    }
  }

  backend "s3" {
    bucket = "demo-bucket"
    region = "us-east-1"
    key = "tf-statefile/demo"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}