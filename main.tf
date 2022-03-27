resource "aws_s3_bucket" "b" {
  bucket = "fuckthesystem"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.b.id


  versioning_configuration {
    status = "Enabled"
  }
}
