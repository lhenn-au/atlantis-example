terraform {
  backend "s3" {
    bucket   = "lh-atlantis-tf-state-a"
    key      = "terraform.tfstate"
    region   = "us-west-2"
    profile  = "default"
    role_arn = "arn:aws:iam::825926482455:role/role-a"
  }
}
