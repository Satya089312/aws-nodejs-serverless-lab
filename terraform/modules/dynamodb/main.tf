resource "aws_dynamodb_table" "this" {
  for_each = var.tables

  name         = each.value.table_name
  billing_mode = each.value.billing_mode
  hash_key     = each.value.hash_key

  attribute {
    name = each.value.hash_key
    type = each.value.hash_key_type
  }

  tags = merge(
    var.tags,
    {
      Name = each.value.table_name
    }
  )
}