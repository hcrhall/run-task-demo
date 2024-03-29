// Local variables are used to define the bucket name and ACL based on the environment.
locals {
  environment = {
    staging = {
      bucket_name   = "staging-bucket"
      acl = "public-read"
    }
    production = {
      bucket_name   = "production-bucket"
      acl = "private"
    }
  }
}

# resource "aws_kms_key" "mykey" {
#   description             = "This key is used to encrypt bucket objects"
#   deletion_window_in_days = 10
# }

// This simple bucket configuration will cause failures.
resource "aws_s3_bucket" "static_bucket" {
  bucket = "run-task-demo-bucket"
  acl    = "public-read"

  tags = {
    Name        = "Public"
    Environment = "Production"
  }
}

// This dynamic bucket configuration will cause failures.
resource "aws_s3_bucket" "dynamic_bucket" {
  count    = (var.environment == "production") ? 1 : 0
  bucket = local.environment[var.environment].bucket_name
  acl    = local.environment[var.environment].acl


  # server_side_encryption_configuration {
  #   rule {
  #     apply_server_side_encryption_by_default {
  #       kms_master_key_id = aws_kms_key.mykey.arn
  #       sse_algorithm     = "aws:kms"
  #     }
  #   }
  # }

  # versioning {
  #   enabled = true
  # }

  tags = {
    Name        = local.environment[var.environment].acl
    Environment = var.environment
  }
}

# resource "aws_s3_bucket_public_access_block" "public" {
#   bucket                  = aws_s3_bucket.bucket.id
#   block_public_acls       = true
#   block_public_policy     = true
#   restrict_public_buckets = true
#   ignore_public_acls      = true
# }
