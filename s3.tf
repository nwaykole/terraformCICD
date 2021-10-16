resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-nu"
  acl    = "private"

  tags = {
    Name        = "My bucket new"
    Environment = "Dev"
  }
}