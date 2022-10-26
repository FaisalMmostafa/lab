terraform {
  backend "s3" {
    bucket = "terra-state-dove10"
    key    = "terraform/backend_Exercise6"
    region = "us-east-2"
  }
}