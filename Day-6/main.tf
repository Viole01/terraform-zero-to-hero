provider "aws" {
  region = "us-east-1"
}

variable "AMI" {
  description = "value"
}

variable "INSTANCE_TYPE" {
  description = "value"
  type        = map(string) # Using map of strings to dynamically set the value of this avriable

  default = {
    "dev"   = "t2.micro"
    "stage" = "t2.medium"
    "prod"  = "t2.large"
  }
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  AMI           = var.AMI
  INSTANCE_TYPE = lookup(var.INSTANCE_TYPE, terraform.workspace, "t2.micro") # this is used to look for the value of a map
}
