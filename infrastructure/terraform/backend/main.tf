provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "suguna1802-eks-terraform-state-2026"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name         = "terraform-eks-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
