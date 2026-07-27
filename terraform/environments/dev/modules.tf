module "s3" {
  source = "../../modules/s3"

  buckets = var.s3_buckets

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}