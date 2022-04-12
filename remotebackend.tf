terraform {
  backend "s3" {
    bucket = "terraform-state-bucket.com"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}