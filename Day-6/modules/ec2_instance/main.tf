provider "aws" {
  region = "us-east-1"
}

variable "AMI" {
  description = "ami of the image to be used"
}

variable "INSTANCE_TYPE" {
  description = "instance type to be used"
}

resource "aws_instance" "ec2_instance" {
  ami           = var.AMI
  instance_type = var.INSTANCE_TYPE
}
