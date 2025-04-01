

resource "aws_s3_bucket" "zarka-bucket-tf-123" {
  bucket = "zarka-bucket-tf-123"  # Change to a globally unique name
  acl    = "public-read"  # Options: private, public-read, public-read-write, authenticated-read

  tags = {
    Name  = "zarka-bucket-tf-123"
    team  = "Cloudnauts"
    Owner = "zarka.baqal@bigbasket.com"
  }
}



output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
