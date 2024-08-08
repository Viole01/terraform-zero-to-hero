# MIGRATION TO TERRAFORM

provider "aws" {
  profile = "prajjwal"
  region  = "us-east-1"
}

import {
  id = "<>" # ID of the resource you want to mgrate

  to = aws_instance.ec2 # Name of the resource in which you want to import the conifg
}

# Command to generate the import configuration

# terraform plan -geneerate-config-out=<name of the file in which you want to generate the output>


# Now to generate the actual terraform statefile

# terraform import <resource name> <resource id>
# for example, terraform import aws_instance.ec2 <id of the instance>


