variable "sg_web_name" {
  default = "DefaultSGWeb"
}

variable "sg_web_description" {
  default = "Allow SSH"
}

variable "ext_cidr_block" {
  default = "0.0.0.0/0"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 8080, 80]
}

variable "outbound_port" {
  default = 0
}

variable "vpc_id" {
  description = "Passing VPC ID"
}