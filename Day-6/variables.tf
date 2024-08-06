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
