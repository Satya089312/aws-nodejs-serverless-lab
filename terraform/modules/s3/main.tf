resource "aws_s3_bucket" "this" {
  for_each = var.buckets

  bucket        = each.value.bucket_name
  force_destroy = each.value.force_destroy

  tags = merge(
    var.tags,
    {
      Name = each.value.bucket_name
    }
  )
}

resource "aws_s3_bucket_versioning" "this" {
  for_each = var.buckets

  bucket = aws_s3_bucket.this[each.key].id

  versioning_configuration {
    status = enabled
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  for_each = var.buckets

  bucket = aws_s3_bucket.this[each.key].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
