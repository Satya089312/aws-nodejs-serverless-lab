module "dynamodb" {
  source = "../../../modules/dynamodb"

  tables = var.dynamodb_tables

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}