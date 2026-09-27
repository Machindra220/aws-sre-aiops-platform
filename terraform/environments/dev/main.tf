# -------------------------------------------------------
# VPC
# -------------------------------------------------------
module "vpc" {
  source = "../../modules/vpc"

  project_name       = var.project_name
  environment        = var.environment
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
}

# -------------------------------------------------------
# EKS
# -------------------------------------------------------
module "eks" {
  source = "../../modules/eks"

  project_name       = var.project_name
  environment        = var.environment
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  cluster_version    = var.eks_cluster_version
  node_instance_type = var.eks_node_instance_type
  node_desired_count = var.eks_node_desired_count
  node_min_count     = var.eks_node_min_count
  node_max_count     = var.eks_node_max_count
}

# -------------------------------------------------------
# ECR
# -------------------------------------------------------
module "ecr" {
  source = "../../modules/ecr"

  project_name          = var.project_name
  environment           = var.environment
  image_retention_count = 10
}

# -------------------------------------------------------
# IAM + IRSA
# -------------------------------------------------------
module "iam" {
  source = "../../modules/iam"

  project_name        = var.project_name
  environment         = var.environment
  oidc_provider_arn   = module.eks.oidc_provider_arn
  oidc_issuer_url     = module.eks.cluster_oidc_issuer_url
  aws_account_id      = "502274764708"
  k8s_namespace       = "default"
  k8s_service_account = "sre-aiops-app"
}

# -------------------------------------------------------
# Secrets Manager
# -------------------------------------------------------
module "secrets" {
  source = "../../modules/secrets"

  project_name = var.project_name
  environment  = var.environment
}
