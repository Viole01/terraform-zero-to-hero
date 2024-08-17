data "aws_availability_zone" "available" {}

locals {
  cluster_name = "praj-eks-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.7.0"

  name                 = "praj-vpc"
  cidr                 = var.CIDR
  azs                  = data.aws_availability_zone.available.name
  public_subnets       = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets      = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    "kubernates.io/cluster/${locals.cluster_name}" = "shared"
  }

  public_subnet_tags = {
    "kubernates.io/cluster/${locals.cluster_name}" = "shared"
    "kubernates.io/role/elb"                       = "1"
  }

  private_subnet_tags = {
    "kubernates.io/cluster/${locals.cluster_name}" = "shared"
    "kubernates.io/role/internal-elb"              = "1"
  }
}
