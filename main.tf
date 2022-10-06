// This configuration will genenrate AWS resource for demonstration purposes
resource "aws_s3_bucket" "bucket" {
  bucket = "run-task-demo-bucket"

  //versioning {
  //  enabled    = true
  //}

  tags = {
    Name        = "Public"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_public_access_block" "public" {
  bucket                  = aws_s3_bucket.bucket.id
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
}
