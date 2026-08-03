module "iam" {
  source = "../../../modules/iam"

  role_name           = var.role_name
  managed_policy_arns = var.managed_policy_arns

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}