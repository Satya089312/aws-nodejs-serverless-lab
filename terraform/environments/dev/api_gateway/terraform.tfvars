aws_region   = "us-east-1"
environment  = "dev"
project_name = "serverless-lab"

api_name  = "serverless-lab-dev-api"
route_key = "GET /hello"

lambda_state_bucket = "serverless-lab-dev-terraform-state"
lambda_state_key    = "lambda/terraform.tfstate"