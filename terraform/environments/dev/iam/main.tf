module "iam" {
  source = "../../../modules/iam"

  role_name   = "lambda-execution-role"
  policy_name = "lambda-execution-policy"

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
