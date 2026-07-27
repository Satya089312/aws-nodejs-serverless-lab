aws_region   = "us-east-1"
environment  = "dev"
project_name = "serverless-lab"

role_name = "serverless-lab-dev-lambda-role"

managed_policy_arns = [
  "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
]