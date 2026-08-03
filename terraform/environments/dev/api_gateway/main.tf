data "terraform_remote_state" "lambda" {
  backend = "s3"

  config = {
    bucket = var.lambda_state_bucket
    key    = var.lambda_state_key
    region = var.aws_region
  }
}

module "api_gateway" {
  source = "../../../modules/api_gateway"

  api_name  = var.api_name
  route_key = var.route_key

  lambda_invoke_arn = data.terraform_remote_state.lambda.outputs.invoke_arn

  lambda_function_name = data.terraform_remote_state.lambda.outputs.function_name

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}