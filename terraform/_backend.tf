terraform {
  backend "s3" {
    bucket = "lh-tf-state-a"
    key    = "terraform.tfstate"
    region = "us-west-2"
    /* profile = "nuvalence" */
  }
}
