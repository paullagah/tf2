variable "sg_manager_name" {
  default = "ManagerSG"
}

variable "sg_worker_name" {
  default = "WorkerSG"
}

variable "sg_web_description" {
  default = "Allow SSH"
}

variable "ext_cidr_block" {
  default = "0.0.0.0/0"
}

variable "ingress_ports_manager" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 8080, 80]
}

variable "ingress_ports_worker" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22]
}

variable "outbound_port" {
  default = 0
}

variable "vpc_id" {
  description = "Passing VPC ID"
}