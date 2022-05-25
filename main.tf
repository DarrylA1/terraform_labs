resource "aws_s3_bucket" "tf_lab_bucket" {
  bucket = "da-terraform-labs-546-tfstates"

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "da-terraform-labs-546-tfstates"
    Environment = "Test"
  }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.tf_lab_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
