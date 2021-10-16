resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-no"
  acl    = "private"

  tags = {
    Name        = "My bucket new"
    Environment = "tag45"
  }
}