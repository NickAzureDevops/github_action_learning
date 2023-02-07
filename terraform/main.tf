resource "aws_s3_bucket" "b" {
  bucket = "test121902trsst12"

  tags = {
    Name        = "tesrt"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}