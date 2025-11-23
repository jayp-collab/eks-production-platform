variable "name" {
  description = "Base name used for tagging"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
    description = "List of availability zone"
    type        = list(string)       
}

variable "public_subnet_cidr" {
    description = "List of CIDR blocks for public subnets"
    type         = "list(strong)"
}

variable "enabled_nat_gateway" {
    description = "Whether to acrss"
    type        = bool
    default     = true
}

variable "tags" {
    description = "Common tags to apply to all resources"
    type        = map(string)
}