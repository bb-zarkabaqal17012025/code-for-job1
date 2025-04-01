resource "aws_s3_bucket" "zarka-bucket-tf-123" {
  bucket = "zarka-bucket-tf-123"
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.zarka-bucket-tf-123.id
  acl    = "public-read"
}
