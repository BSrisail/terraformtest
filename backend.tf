terraform {
  backend "s3" {
    bucket  = "amzn-s3-tf-srisail" # Change this!
    key     = "ec2-components/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true

  }
}