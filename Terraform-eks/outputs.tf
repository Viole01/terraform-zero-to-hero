output "cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group IDs attached to cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "oidc_provider_arn" {
  value = oidc_provider_arn
}

output "zz_update_kubeconifg_command" {
  value = "aws eks update-kubeconfig --name" + module.eks.cluster_id
}
