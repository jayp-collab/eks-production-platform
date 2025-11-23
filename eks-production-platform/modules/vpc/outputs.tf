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

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "ID of the private route table"
  value       = aws_route_table.public.id 
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = var.enabled_nat_gateway ? aws_route_table.private[0].id : null
}

output "azs" {
  description = "List AZs used by this VPC"
  value       = var.azs
}