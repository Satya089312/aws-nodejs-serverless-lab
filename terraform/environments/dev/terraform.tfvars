aws_region   = "us-east-1"
environment  = "dev"
project_name = "serverless-lab"

s3_buckets = {
  application = {
    bucket_name   = "serverless-lab-dev-app"
    versioning    = true
    force_destroy = false
  }

  logs = {
    bucket_name   = "serverless-lab-dev-logs"
    versioning    = true
    force_destroy = false
  }
}
