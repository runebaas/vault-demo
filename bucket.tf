resource "aws_s3_bucket" "vault-demo-bucket" {
  bucket = "boerlage-vault-demo"
  acl = "private"

  versioning {
    enabled = false
  }
}

resource "aws_s3_bucket_public_access_block" "vault-demo-bucket" {
  bucket = aws_s3_bucket.vault-demo-bucket.id

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_object" "demo-object" {
  bucket = aws_s3_bucket.vault-demo-bucket.bucket
  key    = "test-item.txt"
  content = "Hello World"
}
