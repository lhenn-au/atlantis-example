# Created this bucket manually
terraform {
  backend "s3" {
    bucket = "lh-tf-state1"
    key    = "terraform.tfstate"
    region = "us-west-2"
    profile = "default"
  }
}
