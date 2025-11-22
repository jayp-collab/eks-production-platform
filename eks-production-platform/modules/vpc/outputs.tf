output "vpc_id" {
  description = "ID of VPC"
  value       = aws_vpc.standard_vpc.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = [for s in aws_subnet.public : s.id]  
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = [for s in aws_subnet.private : s.id] 
}
