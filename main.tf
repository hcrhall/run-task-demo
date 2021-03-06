// This configuration will genenrate AWS resource for demonstration purposes
resource "aws_s3_bucket" "bucket" {
  bucket = "run-task-demo-bucket"

  versioning {
    enabled    = true
  }

  tags = {
    Name        = "Public"
    Environment = "Production"
  }
}
