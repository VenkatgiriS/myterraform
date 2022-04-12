resource "aws_s3_bucket" "mys3-bucket" {
  bucket = "my-tf-test-bucket-9550"
  acl    = "private"

  tags = {
    Name        = "FlowLogBucket"
    Environment = "Dev"
  }
  depends_on = [
    aws_vpc.myvpc,
  ]
}