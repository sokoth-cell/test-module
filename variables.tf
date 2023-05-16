variable "ingress_from_port" {
  type        = number
  description = "ingress from port"
  default     = 22
}

variable "ingress_to_port" {
  type        = number
  description = "ingress to port"
  default     = 22
}

variable "ec2_ami" {
    type = string
    description = "ami id to use"
    default = "ami-0c94855ba95c71c99"
}

variable "instance_type" {
    type = string
    description = "ec2 instance to use"
    default = "t2.micro"
}