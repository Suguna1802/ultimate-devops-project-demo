output "cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.main.name
}

output "vpc_id" {
  description = "ID of the VPC used by EKS"
  value       = var.vpc_id
}

output "node_group_names" {
  description = "Names of the EKS node groups"
  value       = [for node_group in aws_eks_node_group.main : node_group.node_group_name]
}