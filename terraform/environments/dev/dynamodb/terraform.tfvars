aws_region          = "us-east-1"
environment         = "dev"
project_name        = "serverless-lab"
deployment_role_arn = "arn:aws:iam::1111:role/terraform-deployment-role"

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
