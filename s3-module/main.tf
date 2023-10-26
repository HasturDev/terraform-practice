variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "private"
}

output "bucket_id" {
  value       = aws_s3_bucket.this.id
  description = "The ID of the S3 bucket"
}
