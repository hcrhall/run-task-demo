// This configuration will genenrate AWS resource for demonstration purposes
resource "aws_s3_bucket" "b" {
  bucket = "run_task_demo_bucket"

  tags = {
    Name        = "Public"
    Environment = "Production"
  }
}
