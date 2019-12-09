resource "aws_s3_bucket" "devbucket" {
  bucket = "dev-bucket-terraform-s3-testing"
  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name = "S3 Remote store"
  }
}