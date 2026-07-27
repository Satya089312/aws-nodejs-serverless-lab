variable "aws_region" {
  description = "AWS region for the environment"
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

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "managed_policy_arns" {
  description = "Managed policies to attach to the IAM role"
  type        = list(string)
  default     = []
}