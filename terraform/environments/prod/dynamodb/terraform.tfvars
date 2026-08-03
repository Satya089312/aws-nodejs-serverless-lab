aws_region          = "us-east-1"
environment         = "prod"
project_name        = "serverless-lab"
deployment_role_arn = "arn:aws:iam::2222:role/terraform-deployment-role"

dynamodb_tables = {
  users = {
    table_name    = "serverless-lab-prod-users"
    billing_mode  = "PAY_PER_REQUEST"
    hash_key      = "user_id"
    hash_key_type = "S"
  }

  orders = {
    table_name    = "serverless-lab-prod-orders"
    billing_mode  = "PAY_PER_REQUEST"
    hash_key      = "order_id"
    hash_key_type = "S"
  }
}