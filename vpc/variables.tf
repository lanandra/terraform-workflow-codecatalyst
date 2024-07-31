variable "env_name" {
  type        = string
  description = "Name of sub environment"
  default     = "demo"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}
