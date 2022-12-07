provider "aws" {
  region = "us-west-2"
  profile = "default"
  assume_role {
    role_arn     = "arn:aws:iam::825926482455:role/role-b"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
