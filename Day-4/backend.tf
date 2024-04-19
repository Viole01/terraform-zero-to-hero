terraform {
  backend "s3" {
    bucket         = "praj-s3-demo-xyz" # change this
    key            = "praj/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}