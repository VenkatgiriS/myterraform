terraform {
  backend "s3" {
    bucket = "terraform-state-bucket.com"
    key    = "myterraform.tfstate"
    dynamodb_table = "terraform-lock"
    region = "us-east-1"
  }
}