output "function_name" {
  description = "Lambda function name"
  value       = module.lambda.function_name
}

output "invoke_arn" {
  description = "Lambda invoke ARN"
  value       = module.lambda.invoke_arn
}