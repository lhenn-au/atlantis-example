provider "aws" {
  region = "us-west-2"
  shared_credentials_files = ["/Users/laurahenn/.aws/credentials"]
  profile                  = "nuvalence"
  assume_role {
    role_arn    = "arn:aws:iam::116621101481:role/lh-tf-state-1-access"
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
