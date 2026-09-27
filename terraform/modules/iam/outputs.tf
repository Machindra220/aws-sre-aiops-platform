output "app_irsa_role_arn" {
  description = "IRSA role ARN for app pods"
  value       = aws_iam_role.app_irsa.arn
}

output "app_irsa_role_name" {
  description = "IRSA role name"
  value       = aws_iam_role.app_irsa.name
}

output "github_actions_access_key_id" {
  description = "GitHub Actions IAM access key ID"
  value       = aws_iam_access_key.github_actions.id
  sensitive   = true
}

output "github_actions_secret_access_key" {
  description = "GitHub Actions IAM secret access key"
  value       = aws_iam_access_key.github_actions.secret
  sensitive   = true
}
