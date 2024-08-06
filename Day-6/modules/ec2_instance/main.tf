provider "aws" {
  profile = "prajjwal"
  region  = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami           = var.AMI
  instance_type = var.INSTANCE_TYPE
}
