variable "region" {
  description = "This variable states the region for the EC2 instance"
  default     = "eu-west-1"
}

variable "shared_credentials" {
  description = "This variable states the shared credentials for the IAM User"
  default     = "~/.aws/credentials"
}

