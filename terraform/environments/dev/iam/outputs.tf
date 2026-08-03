output "role_arn" {
  description = "Lambda execution IAM role ARN"
  value       = module.iam.role_arn
}