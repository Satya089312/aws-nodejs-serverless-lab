variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "api_name" {
  description = "API Gateway name"
  type        = string
}

variable "route_key" {
  description = "HTTP API route"
  type        = string
}

variable "lambda_state_bucket" {
  description = "S3 bucket containing Lambda Terraform state"
  type        = string
}

variable "lambda_state_key" {
  description = "Lambda Terraform state key"
  type        = string
}