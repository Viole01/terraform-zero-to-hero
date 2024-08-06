provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  AMI           = var.AMI
  INSTANCE_TYPE = lookup(var.INSTANCE_TYPE, terraform.workspace, "t2.micro") # this is used to look for the value of a map
}
