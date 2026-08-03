data "terraform_remote_state" "iam" {
  backend = "s3"

  config = {
    bucket = var.iam_state_bucket
    key    = var.iam_state_key
    region = var.aws_region
  }
}

module "lambda" {
  source = "../../../modules/lambda"

  function_name = var.function_name
  runtime       = var.runtime
  handler       = var.handler
  filename      = var.filename

  role_arn = data.terraform_remote_state.iam.outputs.role_arn

  memory_size = var.memory_size
  timeout     = var.timeout

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}