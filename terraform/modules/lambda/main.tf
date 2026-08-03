resource "aws_lambda_function" "this" {
  function_name = var.function_name
  role          = var.role_arn

  runtime = var.runtime
  handler = var.handler

  filename         = var.filename
  source_code_hash = filebase64sha256(var.filename)

  memory_size = var.memory_size
  timeout     = var.timeout

  environment {
    variables = var.environment_variables
  }

  tags = var.tags
}