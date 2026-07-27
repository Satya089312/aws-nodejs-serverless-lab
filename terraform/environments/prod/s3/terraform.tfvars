aws_region   = "us-east-1"
environment  = "prod"
project_name = "serverless-lab"

deployment_role_arn = "arn:aws:iam::2222:role/terraform-deployment-role"

s3_buckets = {
  application = {
    bucket_name   = "serverless-lab-prod-app"
    versioning    = true
    force_destroy = false
  }

  logs = {
    bucket_name   = "serverless-lab-prod-logs"
    versioning    = true
    force_destroy = false
  }
}