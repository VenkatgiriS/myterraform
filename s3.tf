resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-test-s3bucket"
  #acl    = "private"

  tags = {
    Name        = "FlowLogBucket"
    Environment = "Dev"
  }
  depends_on = [
    aws_vpc.myvpc,
  ]
}