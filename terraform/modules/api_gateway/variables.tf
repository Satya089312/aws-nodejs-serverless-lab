variable "api_name" {
  description = "Name of the API Gateway HTTP API"
  type        = string
}

variable "lambda_invoke_arn" {
  description = "Invoke ARN of the Lambda function"
  type        = string
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "route_key" {
  description = "HTTP API route"
  type        = string
  default     = "GET /hello"
}

variable "tags" {
  description = "Tags applied to API Gateway"
  type        = map(string)
  default     = {}
}