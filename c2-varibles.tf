
variable "aws_region" {
  type        = string
  default     = "us-east-2"
  description = "AWS region"
}

variable "ec2_keyName" {
    type = string
    default = "pem_linux_ohio"
}

variable "environment" {
    type =string
    default = "dev"
}

variable "business_unit" {
    type = string
    default = "vel"
}

variable "ec2_instance_type" {
    type = string
    default = "t2.micro"
}