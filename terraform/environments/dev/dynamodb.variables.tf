variable "dynamodb_tables" {
  description = "DynamoDB tables required for the environment"

  type = map(object({
    table_name    = string
    billing_mode  = string
    hash_key      = string
    hash_key_type = string
  }))
}