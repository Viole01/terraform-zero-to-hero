# variable "ACCESS_KEY" {
#   description = "AWS access key"
#   type        = string
# }

# variable "SECRET_KEY" {
#   description = "AWS secret access key"
#   type        = string
# }

variable "CIDR" {
  description = "CIDR for the VPC"
  default     = "10.0.0.0/16"
}

variable "INSTANCE_TYPE" {
  description = "Instance type of the server"
  default     = "t2.micro"
}
