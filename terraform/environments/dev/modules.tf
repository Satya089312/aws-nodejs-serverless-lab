module "s3" {
  source = "../../modules/s3"

  buckets = var.s3_buckets

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
module "dynamodb" {
  source = "../../modules/dynamodb"

  tables = var.dynamodb_tables

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}