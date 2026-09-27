output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS API server endpoint"
  value       = module.eks.cluster_endpoint
}

output "eks_oidc_provider_arn" {
  description = "OIDC provider ARN for IRSA"
  value       = module.eks.oidc_provider_arn
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = module.ecr.repository_url
}

output "app_irsa_role_arn" {
  description = "App pod IRSA role ARN"
  value       = module.iam.app_irsa_role_arn
}

output "github_actions_access_key_id" {
  description = "GitHub Actions access key (store in GitHub secrets)"
  value       = module.iam.github_actions_access_key_id
  sensitive   = true
}

output "github_actions_secret_access_key" {
  description = "GitHub Actions secret key (store in GitHub secrets)"
  value       = module.iam.github_actions_secret_access_key
  sensitive   = true
}

output "app_config_secret_arn" {
  description = "App config secret ARN"
  value       = module.secrets.app_config_secret_arn
}
