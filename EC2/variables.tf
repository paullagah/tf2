variable "instance" {
  description = "This variable states the instance type for your EC2"
  default     = "t2.micro"
}

variable "ami" {
  description = "This variable states the ami ID for the EC2 instance"
  default     = "ami-07ee42ba0209b6d77"
}

variable "key" {
  description = "This variable states the key name for the EC2 instance"
  default     = "paullagah"
}

variable "subnet_a" {
  description = "This variable states the subnet ID within the VPC"
  default     = "subnet_a_id"
}

variable "vpc_security_group_ids" {}