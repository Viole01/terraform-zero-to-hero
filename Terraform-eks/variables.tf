variable "CIDR" {
  description = "IP range for the VPC"
}

variable "REGION" {
  description = "AWS region"
}

variable "CLUSTER_VERSION" {
  description = "EKS cluster version"
  default     = 1.27
}
