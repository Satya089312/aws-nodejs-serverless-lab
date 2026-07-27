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

dynamodb_tables = {
  users = {
    table_name    = "serverless-lab-dev-users"
    billing_mode  = "PAY_PER_REQUEST"
    hash_key      = "user_id"
    hash_key_type = "S"
  }

  orders = {
    table_name    = "serverless-lab-dev-orders"
    billing_mode  = "PAY_PER_REQUEST"
    hash_key      = "order_id"
    hash_key_type = "S"
  }
}