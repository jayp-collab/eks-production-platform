# Set AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create VPC 
resource "aws_vpc" "standard_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
}

# Create subnets
resource "aws_subnet" "main" {
  vpc_id = aws_vpc.standard_vpc.id
  cidr_block = "10.0.1.0/24"
}